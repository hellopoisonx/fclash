//go:build android

package main

import "C"
import (
	"core/tun"
	"sync"

	"github.com/metacubex/mihomo/listener/sing_tun"
)

var (
	rTunLock sync.Mutex
	l        *sing_tun.Listener
)

//export StartTun
func StartTun(fd int, stack, gateway, portal, dns string) C.int {
	rTunLock.Lock()
	defer rTunLock.Unlock()

	var err error
	l, err = tun.Start(fd, stack, gateway, portal, dns)
	if err != nil {
		return 1
	}

	return 0
}

//export StopTun
func StopTun() {
	rTunLock.Lock()
	defer rTunLock.Unlock()

	if l != nil {
		l.Close()
		l = nil
	}
}
