package main

import (
	"C"
)

import (
	"context"
	"encoding/json"
	"fmt"
	"time"

	"github.com/metacubex/mihomo/adapter"
	"github.com/metacubex/mihomo/adapter/outboundgroup"
	"github.com/metacubex/mihomo/common/utils"
	"github.com/metacubex/mihomo/log"
	"github.com/metacubex/mihomo/tunnel"
)

var proxyDelayTestCancel context.CancelFunc

//export GetAllProxies
func GetAllProxies() *C.char {
	proxies := tunnel.ProxiesWithProviders()
	json, err := json.Marshal(&proxies)
	if err != nil {
		return nil
	}
	log.Infoln("Got All Proxies")
	return C.CString(string(json))
}

//export GetGlobal
func GetGlobal() *C.char {
	proxies := tunnel.ProxiesWithProviders()
	proxy, ok := proxies["GLOBAL"]
	if !ok {
		log.Errorln("Error finding global group")
		return nil
	}
	json, err := json.Marshal(proxy)
	if err != nil {
		log.Errorln(fmt.Sprintf("Error getting global group: %s", err.Error()))
		return nil
	}
	return C.CString(string(json))
}

//export ChangeProxy
func ChangeProxy(p, sn string) {
	var err error
	proxies := tunnel.ProxiesWithProviders()
	group, ok := proxies[sn]
	if !ok {
		log.Errorln("Can't find %s (as proxy)", sn)
		return
	}
	adapterProxy := group.(*adapter.Proxy)
	selector, ok := adapterProxy.ProxyAdapter.(outboundgroup.SelectAble)
	if !ok {
		log.Errorln("Can't find %s (as selector)", sn)
		return
	}
	if p == "" {
		selector.ForceSet(p)
	} else {
		err = selector.Set(p)
	}
	if err == nil {
		log.Infoln("%s selected %s", sn, p)
	}
}

//export TestProxyDelay
func TestProxyDelay(proxyName, url string, timeout int) uint16 {
	if proxyDelayTestCancel != nil {
		proxyDelayTestCancel()
	}
	defer func() {
		proxyDelayTestCancel = nil
	}()
	expectedStatus, err := utils.NewUnsignedRanges[uint16]("")
	if err != nil {
		return 0
	}

	proxy := tunnel.ProxiesWithProviders()[proxyName]

	var ctx context.Context
	ctx, proxyDelayTestCancel = context.WithTimeout(context.Background(), time.Millisecond*time.Duration(timeout))
	defer proxyDelayTestCancel()

	delay, err := proxy.URLTest(ctx, url, expectedStatus)
	if ctx.Err() != nil {
		return 0
	}

	if err != nil {
		return 0
	}
	return delay
}
