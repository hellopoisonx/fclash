LIB_NAME=libclash-meta
GOBUILD=go build -tags=with_gvisor -ldflags "-s -w"
GOBUILD_DEBUG=go build -ldflags
ANDROID_API=30
ANDROID_NDK_HOME=${HOME}/Android/Sdk/ndk/27.1.12297006/toolchains/llvm/prebuilt/linux-x86_64/bin

default:
	@echo 'Usage of make: [ macos | windows | linux | run ]'

run: build
	./${LIB_NAME}

build:
	${GOBUILD_DEBUG} -o ${LIB_NAME} ./

macos: 
	CGO_ENABLED=1 GOOS=darwin ${GOBUILD_DEBUG} -o bin/macos/${LIB_NAME}.dylib -buildmode=c-shared ./
	cp bin/macos/${LIB_NAME}.dylib ../macos/dylib/

android-32: 
	CC=${ANDROID_NDK_HOME}/armv7a-linux-androideabi${ANDROID_API}-clang \
	CGO_ENABLED=1 GOOS=android GOARCH=arm ${GOBUILD} -o bin/android/armeabi-v7a/${LIB_NAME}.so -buildmode=c-shared ./ \

	CC=${ANDROID_NDK_HOME}/i686-linux-android${ANDROID_API}-clang \
	CGO_ENABLED=1 GOOS=android GOARCH=386 ${GOBUILD} -o bin/android/x86/${LIB_NAME}.so -buildmode=c-shared ./
	
	cp bin/android/x86/${LIB_NAME}.so ../android/app/libs/x86/
	cp bin/android/armeabi-v7a/${LIB_NAME}.so ../android/app/libs/armeabi-v7a/
	
android-64: 
	CC=${ANDROID_NDK_HOME}/aarch64-linux-android${ANDROID_API}-clang \
	CGO_ENABLED=1 GOOS=android GOARCH=arm64 ${GOBUILD} -o bin/android/arm64-v8a/${LIB_NAME}.so -buildmode=c-shared ./ \

	CC=${ANDROID_NDK_HOME}/x86_64-linux-android${ANDROID_API}-clang \
	CGO_ENABLED=1 GOOS=android GOARCH=amd64 ${GOBUILD} -o bin/android/x86_64/${LIB_NAME}.so -buildmode=c-shared ./

	cp bin/android/x86_64/${LIB_NAME}.so ../android/app/libs/x86_64/
	cp bin/android/arm64-v8a/${LIB_NAME}.so ../android/app/libs/arm64-v8a/

android: android-32 android-64

linux: 
	CGO_ENABLED=1 GOOS=linux GOARCH=amd64 ${GOBUILD} -o bin/linux/${LIB_NAME}.so -buildmode=c-shared ./
	cp bin/linux/${LIB_NAME}.so ../linux/lib/

windows: 
	GOOS=windows GOARCH=amd64 ${GOBUILD} -o bin/windows/${LIB_NAME}.dll -buildmode=c-shared ./

.PHONY: default macos windows linux run
