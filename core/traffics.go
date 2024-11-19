package main

import (
	"C"
	"context"
	"encoding/json"
	"time"

	"github.com/metacubex/mihomo/tunnel/statistic"
)

import (
	"github.com/metacubex/mihomo/log"
)

var currentTrafficsCancel context.CancelFunc

//export StartCurrentTraffics
func StartCurrentTraffics() {
	go func() {
		tick := time.NewTicker(time.Second)
		defer tick.Stop()
		var ctx context.Context
		ctx, currentTrafficsCancel = context.WithCancel(context.Background())
		t := statistic.DefaultManager
		log.Infoln("Starting traffics stream")
		for {
			select {
			case <-tick.C:
				up, down := t.Now()
				json, _ := json.Marshal(&Traffic{Up: up, Down: down})
				sendMessageAsync(&Message{Data: string(json), MessageType: CurrentTraffics})
			case <-ctx.Done():
				return
			}
		}
	}()
}

//export StopCurrentTraffics
func StopCurrentTraffics() {
	currentTrafficsCancel()
}

type Traffic struct {
	Up   int64 `json:"up"`
	Down int64 `json:"down"`
}
