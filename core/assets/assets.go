package assets

import (
	"fmt"
	"net/netip"
	"strings"

	C "github.com/metacubex/mihomo/constant"
	providerTypes "github.com/metacubex/mihomo/constant/provider"
	LC "github.com/metacubex/mihomo/listener/config"
	"github.com/metacubex/mihomo/log"
	R "github.com/metacubex/mihomo/rules"
	"github.com/metacubex/mihomo/tunnel"
)

type TunSchema struct {
	RouteExcludeAddress      *[]netip.Prefix `yaml:"route-exclude-address" json:"route_exclude_address,omitempty"`
	DNSHijack                *[]string       `yaml:"dns-hijack" json:"dns-hijack"`
	RouteAddress             *[]netip.Prefix `yaml:"route-address" json:"route_address,omitempty"`
	RouteAddressSet          *[]string       `yaml:"route-address-set" json:"route_address_set,omitempty"`
	AutoRoute                *bool           `yaml:"auto-route" json:"auto-route"`
	AutoDetectInterface      *bool           `yaml:"auto-detect-interface" json:"auto-detect-interface"`
	MTU                      *uint32         `yaml:"mtu" json:"mtu,omitempty"`
	GSO                      *bool           `yaml:"gso" json:"gso,omitempty"`
	GSOMaxSize               *uint32         `yaml:"gso-max-size" json:"gso-max-size,omitempty"`
	Inet6Address             *[]netip.Prefix `yaml:"inet6-address" json:"inet6-address,omitempty"`
	IPRoute2TableIndex       *int            `yaml:"iproute2-table-index" json:"iproute2_table_index,omitempty"`
	IPRoute2RuleIndex        *int            `yaml:"iproute2-rule-index" json:"iproute2_rule_index,omitempty"`
	AutoRedirect             *bool           `yaml:"auto-redirect" json:"auto_redirect,omitempty"`
	AutoRedirectInputMark    *uint32         `yaml:"auto-redirect-input-mark" json:"auto_redirect_input_mark,omitempty"`
	AutoRedirectOutputMark   *uint32         `yaml:"auto-redirect-output-mark" json:"auto_redirect_output_mark,omitempty"`
	StrictRoute              *bool           `yaml:"strict-route" json:"strict-route,omitempty"`
	Stack                    *C.TUNStack     `yaml:"stack" json:"stack"`
	Inet6RouteExcludeAddress *[]netip.Prefix `yaml:"inet6-route-exclude-address" json:"inet6-route-exclude-address,omitempty"`
	Device                   *string         `yaml:"device" json:"device"`
	RouteExcludeAddressSet   *[]string       `yaml:"route-exclude-address-set" json:"route_exclude_address_set,omitempty"`
	IncludeInterface         *[]string       `yaml:"include-interface" json:"include-interface,omitempty"`
	ExcludeInterface         *[]string       `yaml:"exclude-interface" json:"exclude-interface,omitempty"`
	IncludeUID               *[]uint32       `yaml:"include-uid" json:"include-uid,omitempty"`
	IncludeUIDRange          *[]string       `yaml:"include-uid-range" json:"include-uid-range,omitempty"`
	ExcludeUID               *[]uint32       `yaml:"exclude-uid" json:"exclude-uid,omitempty"`
	ExcludeUIDRange          *[]string       `yaml:"exclude-uid-range" json:"exclude-uid-range,omitempty"`
	IncludeAndroidUser       *[]int          `yaml:"include-android-user" json:"include-android-user,omitempty"`
	IncludePackage           *[]string       `yaml:"include-package" json:"include-package,omitempty"`
	ExcludePackage           *[]string       `yaml:"exclude-package" json:"exclude-package,omitempty"`
	EndpointIndependentNat   *bool           `yaml:"endpoint-independent-nat" json:"endpoint-independent-nat,omitempty"`
	UDPTimeout               *int64          `yaml:"udp-timeout" json:"udp-timeout,omitempty"`
	FileDescriptor           *int            `yaml:"file-descriptor" json:"file-descriptor"`
	Inet4RouteAddress        *[]netip.Prefix `yaml:"inet4-route-address" json:"inet4-route-address,omitempty"`
	Inet6RouteAddress        *[]netip.Prefix `yaml:"inet6-route-address" json:"inet6-route-address,omitempty"`
	Inet4RouteExcludeAddress *[]netip.Prefix `yaml:"inet4-route-exclude-address" json:"inet4-route-exclude-address,omitempty"`
	Enable                   bool            `yaml:"enable" json:"enable"`
}

type TuicServerSchema struct {
	Listen                *string            `yaml:"listen" json:"listen"`
	Token                 *[]string          `yaml:"token" json:"token"`
	Users                 *map[string]string `yaml:"users" json:"users,omitempty"`
	Certificate           *string            `yaml:"certificate" json:"certificate"`
	PrivateKey            *string            `yaml:"private-key" json:"private-key"`
	CongestionController  *string            `yaml:"congestion-controller" json:"congestion-controller,omitempty"`
	MaxIdleTime           *int               `yaml:"max-idle-time" json:"max-idle-time,omitempty"`
	AuthenticationTimeout *int               `yaml:"authentication-timeout" json:"authentication-timeout,omitempty"`
	ALPN                  *[]string          `yaml:"alpn" json:"alpn,omitempty"`
	MaxUdpRelayPacketSize *int               `yaml:"max-udp-relay-packet-size" json:"max-udp-relay-packet-size,omitempty"`
	CWND                  *int               `yaml:"cwnd" json:"cwnd,omitempty"`
	Enable                bool               `yaml:"enable" json:"enable"`
}
type ConfigSchema struct {
	Port              *int               `json:"port"`
	SocksPort         *int               `json:"socks-port"`
	RedirPort         *int               `json:"redir-port"`
	TProxyPort        *int               `json:"tproxy-port"`
	MixedPort         *int               `json:"mixed-port"`
	Tun               *TunSchema         `json:"tun"`
	TuicServer        *TuicServerSchema  `json:"tuic-server"`
	ShadowSocksConfig *string            `json:"ss-config"`
	VmessConfig       *string            `json:"vmess-config"`
	TcptunConfig      *string            `json:"tcptun-config"`
	UdptunConfig      *string            `json:"udptun-config"`
	AllowLan          *bool              `json:"allow-lan"`
	SkipAuthPrefixes  *[]netip.Prefix    `json:"skip-auth-prefixes"`
	LanAllowedIPs     *[]netip.Prefix    `json:"lan-allowed-ips"`
	LanDisAllowedIPs  *[]netip.Prefix    `json:"lan-disallowed-ips"`
	BindAddress       *string            `json:"bind-address"`
	Mode              *tunnel.TunnelMode `json:"mode"`
	LogLevel          *log.LogLevel      `json:"log-level"`
	IPv6              *bool              `json:"ipv6"`
	Sniffing          *bool              `json:"sniffing"`
	TcpConcurrent     *bool              `json:"tcp-concurrent"`
	InterfaceName     *string            `json:"interface-name"`
}

func PointerOrDefault(p *int, def int) int {
	if p != nil {
		return *p
	}
	return def
}

func PointerOrDefaultString(p *string, def string) string {
	if p != nil {
		return *p
	}

	return def
}

func PointerOrDefaultTun(p *TunSchema, def LC.Tun) LC.Tun {
	if p != nil {
		def.Enable = p.Enable
		if p.Device != nil {
			def.Device = *p.Device
		}
		if p.Stack != nil {
			def.Stack = *p.Stack
		}
		if p.DNSHijack != nil {
			def.DNSHijack = *p.DNSHijack
		}
		if p.AutoRoute != nil {
			def.AutoRoute = *p.AutoRoute
		}
		if p.AutoDetectInterface != nil {
			def.AutoDetectInterface = *p.AutoDetectInterface
		}
		if p.MTU != nil {
			def.MTU = *p.MTU
		}
		if p.GSO != nil {
			def.GSO = *p.GSO
		}
		if p.GSOMaxSize != nil {
			def.GSOMaxSize = *p.GSOMaxSize
		}
		//if p.Inet4Address != nil {
		//	def.Inet4Address = *p.Inet4Address
		//}
		if p.Inet6Address != nil {
			def.Inet6Address = *p.Inet6Address
		}
		if p.IPRoute2TableIndex != nil {
			def.IPRoute2TableIndex = *p.IPRoute2TableIndex
		}
		if p.IPRoute2RuleIndex != nil {
			def.IPRoute2RuleIndex = *p.IPRoute2RuleIndex
		}
		if p.AutoRedirect != nil {
			def.AutoRedirect = *p.AutoRedirect
		}
		if p.AutoRedirectInputMark != nil {
			def.AutoRedirectInputMark = *p.AutoRedirectInputMark
		}
		if p.AutoRedirectOutputMark != nil {
			def.AutoRedirectOutputMark = *p.AutoRedirectOutputMark
		}
		if p.StrictRoute != nil {
			def.StrictRoute = *p.StrictRoute
		}
		if p.RouteAddress != nil {
			def.RouteAddress = *p.RouteAddress
		}
		if p.RouteAddressSet != nil {
			def.RouteAddressSet = *p.RouteAddressSet
		}
		if p.RouteExcludeAddress != nil {
			def.RouteExcludeAddress = *p.RouteExcludeAddress
		}
		if p.RouteExcludeAddressSet != nil {
			def.RouteExcludeAddressSet = *p.RouteExcludeAddressSet
		}
		if p.Inet4RouteAddress != nil {
			def.Inet4RouteAddress = *p.Inet4RouteAddress
		}
		if p.Inet6RouteAddress != nil {
			def.Inet6RouteAddress = *p.Inet6RouteAddress
		}
		if p.Inet4RouteExcludeAddress != nil {
			def.Inet4RouteExcludeAddress = *p.Inet4RouteExcludeAddress
		}
		if p.Inet6RouteExcludeAddress != nil {
			def.Inet6RouteExcludeAddress = *p.Inet6RouteExcludeAddress
		}
		if p.IncludeInterface != nil {
			def.IncludeInterface = *p.IncludeInterface
		}
		if p.ExcludeInterface != nil {
			def.ExcludeInterface = *p.ExcludeInterface
		}
		if p.IncludeUID != nil {
			def.IncludeUID = *p.IncludeUID
		}
		if p.IncludeUIDRange != nil {
			def.IncludeUIDRange = *p.IncludeUIDRange
		}
		if p.ExcludeUID != nil {
			def.ExcludeUID = *p.ExcludeUID
		}
		if p.ExcludeUIDRange != nil {
			def.ExcludeUIDRange = *p.ExcludeUIDRange
		}
		if p.IncludeAndroidUser != nil {
			def.IncludeAndroidUser = *p.IncludeAndroidUser
		}
		if p.IncludePackage != nil {
			def.IncludePackage = *p.IncludePackage
		}
		if p.ExcludePackage != nil {
			def.ExcludePackage = *p.ExcludePackage
		}
		if p.EndpointIndependentNat != nil {
			def.EndpointIndependentNat = *p.EndpointIndependentNat
		}
		if p.UDPTimeout != nil {
			def.UDPTimeout = *p.UDPTimeout
		}
		if p.FileDescriptor != nil {
			def.FileDescriptor = *p.FileDescriptor
		}
	}
	return def
}

func PointerOrDefaultTuicServer(p *TuicServerSchema, def LC.TuicServer) LC.TuicServer {
	if p != nil {
		def.Enable = p.Enable
		if p.Listen != nil {
			def.Listen = *p.Listen
		}
		if p.Token != nil {
			def.Token = *p.Token
		}
		if p.Users != nil {
			def.Users = *p.Users
		}
		if p.Certificate != nil {
			def.Certificate = *p.Certificate
		}
		if p.PrivateKey != nil {
			def.PrivateKey = *p.PrivateKey
		}
		if p.CongestionController != nil {
			def.CongestionController = *p.CongestionController
		}
		if p.MaxIdleTime != nil {
			def.MaxIdleTime = *p.MaxIdleTime
		}
		if p.AuthenticationTimeout != nil {
			def.AuthenticationTimeout = *p.AuthenticationTimeout
		}
		if p.ALPN != nil {
			def.ALPN = *p.ALPN
		}
		if p.MaxUdpRelayPacketSize != nil {
			def.MaxUdpRelayPacketSize = *p.MaxUdpRelayPacketSize
		}
		if p.CWND != nil {
			def.CWND = *p.CWND
		}
	}
	return def
}

func ParseRules(line string, proxies map[string]C.Proxy, ruleProviders map[string]providerTypes.RuleProvider, subRules map[string][]C.Rule, format string) (C.Rule, error) {
	// parse rules
	rule := trimArr(strings.Split(line, ","))
	var (
		payload  string
		target   string
		params   []string
		ruleName = strings.ToUpper(rule[0])
	)

	l := len(rule)

	if ruleName == "NOT" || ruleName == "OR" || ruleName == "AND" || ruleName == "SUB-RULE" || ruleName == "DOMAIN-REGEX" || ruleName == "PROCESS-NAME-REGEX" || ruleName == "PROCESS-PATH-REGEX" {
		target = rule[l-1]
		payload = strings.Join(rule[1:l-1], ",")
	} else {
		if l < 2 {
			return nil, fmt.Errorf("%s [%s] error: format invalid", format, line)
		}
		if l < 4 {
			rule = append(rule, make([]string, 4-l)...)
		}
		if ruleName == "MATCH" {
			l = 2
		}
		if l >= 3 {
			l = 3
			payload = rule[1]
		}
		target = rule[l-1]
		params = rule[l:]
	}
	if _, ok := proxies[target]; !ok {
		if ruleName != "SUB-RULE" {
			return nil, fmt.Errorf("%s [%s] error: proxy [%s] not found", format, line, target)
		} else if _, ok = subRules[target]; !ok {
			return nil, fmt.Errorf("%s [%s] error: sub-rule [%s] not found", format, line, target)
		}
	}

	params = trimArr(params)
	parsed, parseErr := R.ParseRule(ruleName, payload, target, params, subRules)
	if parseErr != nil {
		return nil, fmt.Errorf("%s [%s] error: %s", format, line, parseErr.Error())
	}

	for _, name := range parsed.ProviderNames() {
		if _, ok := ruleProviders[name]; !ok {
			return nil, fmt.Errorf("%s [%s] error: rule set [%s] not found", format, line, name)
		}
	}

	return parsed, nil
}

func trimArr(arr []string) (r []string) {
	for _, e := range arr {
		r = append(r, strings.Trim(e, " "))
	}
	return
}
