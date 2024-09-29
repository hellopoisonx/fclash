package main

import (
	"C"
	A "core/assets"
	"encoding/json"
	"path/filepath"

	"github.com/metacubex/mihomo/adapter/inbound"
	"github.com/metacubex/mihomo/component/dialer"
	"github.com/metacubex/mihomo/component/resolver"
	"github.com/metacubex/mihomo/config"
	Constant "github.com/metacubex/mihomo/constant"
	"github.com/metacubex/mihomo/hub/executor"
	"github.com/metacubex/mihomo/listener"
	"github.com/metacubex/mihomo/log"
	"github.com/metacubex/mihomo/tunnel"
)

//export GetConfigs
func GetConfigs() *C.char {
	general := executor.GetGeneral()
	json, err := json.Marshal(general)
	if err != nil {
		log.Errorln("Error getting configs: %s", err.Error())
		return nil
	}
	return C.CString(string(json))
}

//export UpdateConfigs
func UpdateConfigs(reqJson string) *C.char {
	req := struct {
		Path    string `json:"path"`
		Payload string `json:"payload"`
	}{}
	if err := json.Unmarshal([]byte(reqJson), &req); err != nil {
		return C.CString(err.Error())
	}

	force := true
	var cfg *config.Config
	var err error

	if req.Payload != "" {
		cfg, err = executor.ParseWithBytes([]byte(req.Payload))
		if err != nil {
			return C.CString(err.Error())
		}
	} else {
		if req.Path == "" {
			req.Path = Constant.Path.Config()
		}
		if !filepath.IsAbs(req.Path) {
			return C.CString("filepath is not absolute")
		}

		cfg, err = executor.ParseWithPath(req.Path)
		if err != nil {
			return C.CString(err.Error())
		}
	}

	executor.ApplyConfig(cfg, force)
	return nil
}

//export PatchConfigs
func PatchConfigs(content string) *C.char {
	general := &A.ConfigSchema{}
	if err := json.Unmarshal([]byte(content), &general); err != nil {
		return C.CString(err.Error())
	}

	if general.AllowLan != nil {
		listener.SetAllowLan(*general.AllowLan)
	}

	if general.SkipAuthPrefixes != nil {
		inbound.SetSkipAuthPrefixes(*general.SkipAuthPrefixes)
	}

	if general.LanAllowedIPs != nil {
		inbound.SetAllowedIPs(*general.LanAllowedIPs)
	}

	if general.LanDisAllowedIPs != nil {
		inbound.SetDisAllowedIPs(*general.LanDisAllowedIPs)
	}

	if general.BindAddress != nil {
		listener.SetBindAddress(*general.BindAddress)
	}

	if general.Sniffing != nil {
		tunnel.SetSniffing(*general.Sniffing)
	}

	if general.TcpConcurrent != nil {
		dialer.SetTcpConcurrent(*general.TcpConcurrent)
	}

	if general.InterfaceName != nil {
		dialer.DefaultInterface.Store(*general.InterfaceName)
	}

	ports := listener.GetPorts()

	listener.ReCreateHTTP(A.PointerOrDefault(general.Port, ports.Port), tunnel.Tunnel)
	listener.ReCreateSocks(A.PointerOrDefault(general.SocksPort, ports.SocksPort), tunnel.Tunnel)
	listener.ReCreateRedir(A.PointerOrDefault(general.RedirPort, ports.RedirPort), tunnel.Tunnel)
	listener.ReCreateTProxy(A.PointerOrDefault(general.TProxyPort, ports.TProxyPort), tunnel.Tunnel)
	listener.ReCreateMixed(A.PointerOrDefault(general.MixedPort, ports.MixedPort), tunnel.Tunnel)
	listener.ReCreateTun(A.PointerOrDefaultTun(general.Tun, listener.LastTunConf), tunnel.Tunnel)
	listener.ReCreateShadowSocks(A.PointerOrDefaultString(general.ShadowSocksConfig, ports.ShadowSocksConfig), tunnel.Tunnel)
	listener.ReCreateVmess(A.PointerOrDefaultString(general.VmessConfig, ports.VmessConfig), tunnel.Tunnel)
	listener.ReCreateTuic(A.PointerOrDefaultTuicServer(general.TuicServer, listener.LastTuicConf), tunnel.Tunnel)

	if general.Mode != nil {
		tunnel.SetMode(*general.Mode)
	}

	if general.LogLevel != nil {
		log.SetLevel(*general.LogLevel)
	}

	if general.IPv6 != nil {
		resolver.DisableIPv6 = !*general.IPv6
	}

	return nil
}
