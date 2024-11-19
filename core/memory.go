package main

import (
	"C"
	"context"
	"fmt"
	"time"

	"github.com/metacubex/mihomo/tunnel/statistic"
)
import "github.com/metacubex/mihomo/log"

var memoryCancel context.CancelFunc

//export StartMemory
func StartMemory() {
	go func() {
		log.Infoln("Starting memory stream")
		tick := time.NewTicker(time.Second)
		defer tick.Stop()

		var memoryCtx context.Context
		memoryCtx, memoryCancel = context.WithCancel(context.Background())

		t := statistic.DefaultManager
		first := true
		for {
			select {
			case <-tick.C:
				inuse := t.Memory()
				// make chat.js begin with zero
				// this is shit var,but we need output 0 for first time
				if first {
					inuse = 0
					first = false
				}
				sendMessageAsync(&Message{Data: fmt.Sprintf("{\"inuse\": %d}", inuse), MessageType: Memory})
			case <-memoryCtx.Done():
				return
			}
		}
	}()
}

//export StopMemory
func StopMemory() {
	memoryCancel()
}
