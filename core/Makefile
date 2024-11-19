GOENV=CGO_ENABLE=1
GOTAGS="-tags=with_gvisor"
GOBUILD=${GOENV} go build ${GOTAGS} -buildmode=c-shared -ldflags "-s -w"
LINUX_AMD64=./build/x86_64-linux

linux-amd64:
	mkdir -p ${LINUX_AMD64}
	GOOS=linux GOARCH=amd64 ${GOBUILD} -o ${LINUX_AMD64}/core.so .
