package main

import (
	"C"
)

import (
	"context"
	"encoding/json"
	"time"

	"github.com/metacubex/mihomo/adapter"
	"github.com/metacubex/mihomo/adapter/outboundgroup"
	"github.com/metacubex/mihomo/common/utils"
	"github.com/metacubex/mihomo/component/profile/cachefile"
	Constants "github.com/metacubex/mihomo/constant"
	"github.com/metacubex/mihomo/tunnel"
)

var groupDelayTestCacel context.CancelFunc

//export GetAllGroups
func GetAllGroups() *C.char {
	var gs []Constants.Proxy
	for _, p := range tunnel.Proxies() {
		if _, ok := p.(*adapter.Proxy).ProxyAdapter.(Constants.Group); ok {
			gs = append(gs, p)
		}
	}
	json, err := json.Marshal(gs)
	if err != nil {
		return nil
	}
	return C.CString(string(json))
}

//export GetGroupDelay
func GetGroupDelay(groupName, url string, timeout int) *C.char {
	if groupDelayTestCacel != nil {
		groupDelayTestCacel()
	}
	defer func() {
		groupDelayTestCacel = nil
	}()
	proxy := tunnel.ProxiesWithProviders()[groupName]
	group, ok := proxy.(*adapter.Proxy).ProxyAdapter.(Constants.Group)
	if !ok {
		return nil
	}

	switch proxy.(*adapter.Proxy).Type() {
	case Constants.URLTest:
		if urlTestGroup, ok := proxy.(*adapter.Proxy).ProxyAdapter.(*outboundgroup.URLTest); ok {
			urlTestGroup.ForceSet("")
		}
	case Constants.Fallback:
		if fallbackGroup, ok := proxy.(*adapter.Proxy).ProxyAdapter.(*outboundgroup.Fallback); ok {
			fallbackGroup.ForceSet("")
		}
	}

	if proxy.(*adapter.Proxy).Type() != Constants.Selector {
		cachefile.Cache().SetSelected(proxy.Name(), "")
	}

	expectedStatus, err := utils.NewUnsignedRanges[uint16]("")
	if err != nil {
		return nil
	}

	var ctx context.Context
	ctx, groupDelayTestCacel = context.WithTimeout(context.Background(), time.Millisecond*time.Duration(timeout))
	defer groupDelayTestCacel()

	delays, err := group.URLTest(ctx, url, expectedStatus)
	if err != nil {
		return nil
	}
	json, err := json.Marshal(&delays)
	if err != nil {
		return nil
	}
	return C.CString(string(json))
}
