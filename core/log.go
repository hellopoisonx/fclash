package main

import (
	"C"
	"encoding/json"
	"fmt"

	"github.com/metacubex/mihomo/common/observable"
	"github.com/metacubex/mihomo/hub/route"
	"github.com/metacubex/mihomo/log"
)

var logSubscriber observable.Subscription[log.Event]

//export StartLog
func StartLog() {
	if logSubscriber != nil {
		log.UnSubscribe(logSubscriber)
		logSubscriber = nil
	}
	logSubscriber = log.Subscribe()
	go func() {
		for logData := range logSubscriber {
			if logData.LogLevel < log.Level() {
				continue
			}
			logEncoded, err := json.Marshal(&route.Log{Type: logData.Type(), Payload: logData.Payload})
			if err != nil {
				sendErrorAsync(fmt.Errorf("Error marshalling log: %s", err.Error()))
				continue
			}
			message := Message{
				MessageType: Log,
				Data:        string(logEncoded),
			}
			sendMessage(&message)
		}
	}()
}

//export StopLog
func StopLog() {
	if logSubscriber != nil {
		log.UnSubscribe(logSubscriber)
		logSubscriber = nil
	}
}
