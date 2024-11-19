package main

import (
	"sync"

	"github.com/metacubex/mihomo/log"
)

var (
	messageLock sync.Mutex = sync.Mutex{}
	errLock     sync.Mutex = sync.Mutex{}
)

var (
	messageChannel chan Message
	errorChannel   chan error
)

var (
	messageCallback func(*Message)
	errorCallback   func(error)
)

var emptyMsg = Message{}

type Message struct {
	Data        string      `json:"data"`
	MessageType MessageType `json:"messageType"`
}

type MessageType int

const (
	Log MessageType = iota
	CurrentTraffics
	TotalTraffics
	Memory
	Connections
	ClashStatus
)

func sendMessageAsync(msg *Message) {
	if messageCallback == nil {
		return
	}
	messageLock.Lock()
	messageCallback(msg)
	messageLock.Unlock()
}

func sendErrorAsync(err error) {
	if errorCallback == nil {
		return
	}
	errLock.Lock()
	errorCallback(err)
	errLock.Unlock()
}

func handleError(info string) {
	if err := recover(); err != nil {
		log.Errorln("%s: %s", info, err)
	}
}
