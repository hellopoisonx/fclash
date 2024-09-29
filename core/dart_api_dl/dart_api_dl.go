package dart_api_dl

// #include <stdlib.h>
// #include "stdint.h"
// #include "include/dart_api_dl.c"
// // Go does not allow calling C function pointers directly. So we are
// // forced to provide a trampoline.
// bool GoDart_PostCObject(Dart_Port_DL port, Dart_CObject* obj) {
//   return Dart_PostCObject_DL(port, obj);
// }
import "C"

import (
	"encoding/json"
	"unsafe"
)

func Init(api unsafe.Pointer) {
	if C.Dart_InitializeApiDL(api) != 0 {
		panic("failed to initialize Dart DL C API: version mismatch. " +
			"must update include/ to match Dart SDK version")
	}
}

func SendInt64ToPort(port int64, msg int64) {
	var obj C.Dart_CObject
	obj._type = C.Dart_CObject_kInt64
	// cgo does not support unions so we are forced to do this
	*(*C.int64_t)(unsafe.Pointer(&obj.value)) = C.int64_t(msg)
	p := C.Dart_Port_DL(port)
	C.GoDart_PostCObject(p, &obj)
}

func SendDataToPort(port int64, msg string) {
	data := make(map[string]interface{})
	data["data"] = msg
	SendMapToPort(port, data)
}

func SendErrorToPort(port int64, err error) {
	data := make(map[string]interface{})
	data["error"] = err.Error()

	json, err := json.Marshal(data)

	var strJson string
	if err != nil {
		strJson = "Error marshalling error message"
	} else {
		strJson = string(json)
	}

	SendStringToPort(port, strJson)
}

func SendMapToPort(port int64, data map[string]interface{}) {
	json, err := json.Marshal(data)
	if err != nil {
		SendErrorToPort(port, err)
	}

	SendStringToPort(port, string(json))
}

func SendStringToPort(port int64, value string) {
	ret := C.CString(value)

	var obj C.Dart_CObject
	obj._type = C.Dart_CObject_kString

	// cgo does not support unions so we are forced to do this
	*(**C.char)(unsafe.Pointer(&obj.value)) = ret
	p := C.Dart_Port_DL(port)
	C.GoDart_PostCObject(p, &obj)

	C.free(unsafe.Pointer(ret))
}
