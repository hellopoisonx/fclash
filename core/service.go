package main

import "C"
import (
	"core/dart_api_dl"
	"encoding/json"
	"fmt"
	"os"
	"unsafe"

	Constants "github.com/metacubex/mihomo/constant"
	"github.com/metacubex/mihomo/hub/executor"
	"github.com/metacubex/mihomo/log"
	"github.com/oschwald/maxminddb-golang"
)

var isRunning bool = false

const defaultConfig string = `
mixed-port: 7890
allow-lan: true
mode: rule
log-level: info
external-controller: 127.0.0.1:9090
proxy-groups:
  - name: DEFAULT
    type: select
    proxies:
      - DIRECT
rules:
  - MATCH,DEFAULT
`

//export InitializeDartApi
func InitializeDartApi(api unsafe.Pointer) {
	defer handleError("Error initializing dart api")
	dart_api_dl.Init(api)
}

//export SetMessageCallback
func SetMessageCallback(port int64) {
	defer handleError("Error setting message callback")
	messageCallback = func(msg *Message) {
		json, err := json.Marshal(msg)
		if err != nil {
			sendErrorAsync(err)
			return
		}
		dart_api_dl.SendStringToPort(port, string(json))
	}
}

//export SetErrorCallback
func SetErrorCallback(port int64) {
	defer handleError("Error setting error callback")
	errorCallback = func(err error) {
		dart_api_dl.SendErrorToPort(port, err)
	}
}

//export IsRunning
func IsRunning() bool {
	return isRunning
}

//export StartClash
func StartClash() {
	if isRunning {
		StopClash()
	}
	log.Infoln("Starting clash")
	messageChannel = make(chan Message, 512)
	cfg, err := executor.Parse()
	if err != nil {
		sendErrorAsync(err)
		return
	}
	executor.ApplyConfig(cfg, true)
	isRunning = true
	sendMessage(&Message{MessageType: ClashStatus, Data: "true"})
}

//export StopClash
func StopClash() {
	close(messageChannel)
	executor.Shutdown()
	isRunning = false
	sendMessage(&Message{MessageType: ClashStatus, Data: "false"})
}

//export SetConfig
func SetConfig(path string) {
	Constants.SetConfig(path)
}

//export SetHomeDir
func SetHomeDir(path string) {
	Constants.SetHomeDir(path)
}

//export ValidateConfigWithPath
func ValidateConfigWithPath(path string, create bool) *C.char {
	s, err := os.Stat(path)
	if err != nil {
		if os.IsNotExist(err) {
			if create {
				f, err := os.OpenFile(path, os.O_WRONLY|os.O_CREATE, os.ModePerm)
				if err != nil {
					return C.CString(err.Error())
				}
				_, err = f.WriteString(defaultConfig)
				if err != nil {
					return C.CString(err.Error())
				}
				return nil
			} else {
				return C.CString(err.Error())
			}
		}
	}
	if s.IsDir() {
		return C.CString(fmt.Errorf("%s is not a file", path).Error())
	}
	_, err = executor.ParseWithPath(path)
	if err != nil {
		return C.CString(err.Error())
	}
	return nil
}

//export ValidateHomeDir
func ValidateHomeDir(path string, create bool) *C.char {
	s, err := os.Stat(path)
	if err != nil {
		if os.IsNotExist(err) {
			if create {
				err = os.Mkdir(path, os.ModePerm)
				if err != nil {
					return C.CString(err.Error())
				}
			} else {
				return C.CString(err.Error())
			}
		}
		return C.CString(err.Error())
	}
	if !s.IsDir() {
		return C.CString(fmt.Errorf("%s is not a directory or not an absolute path", path).Error())
	}
	return nil
}

//export ValidateResource
func ValidateResource(path string) *C.char {
	p := path
	if reader, err := maxminddb.Open(p); err == nil {
		if err = reader.Verify(); err != nil {
			return C.CString(err.Error())
		}
	} else {
		return C.CString(err.Error())
	}
	return nil
}
