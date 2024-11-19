package main

import (
	"C"
	"bytes"
	"context"
	"encoding/json"
	"time"

	"github.com/metacubex/mihomo/tunnel/statistic"
)

var connectionsCancel context.CancelFunc

//export StartConnections
func StartConnections() {
	go func() {
		interval := 1000
		var ctx context.Context
		ctx, connectionsCancel = context.WithCancel(context.Background())
		buf := &bytes.Buffer{}
		sendSnapshot := func() error {
			buf.Reset()
			snapshot := statistic.DefaultManager.Snapshot()
			if err := json.NewEncoder(buf).Encode(snapshot); err != nil {
				return err
			}

			sendMessageAsync(&Message{Data: buf.String(), MessageType: Connections})
			return nil
		}

		if err := sendSnapshot(); err != nil {
			sendErrorAsync(err)
			return
		}

		tick := time.NewTicker(time.Millisecond * time.Duration(interval))
		defer tick.Stop()
		for {
			select {
			case <-tick.C:
				if err := sendSnapshot(); err != nil {
					sendErrorAsync(err)
					return
				}
			case <-ctx.Done():
				return
			}
		}
	}()
}

//export StopConnections
func StopConnections() {
	connectionsCancel()
}

//export CloseConnection
func CloseConnection(id string) {
	if c := statistic.DefaultManager.Get(id); c != nil {
		_ = c.Close()
	}
}

//export CloseAllConnections
func CloseAllConnections() {
	statistic.DefaultManager.Range(func(c statistic.Tracker) bool {
		_ = c.Close()
		return true
	})
}
