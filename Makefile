
.PHONY: all

all: bin/hello

bin/:
	mkdir bin/

bin/hello: bin/
	CGO_ENABLED=0 go build -a --installsuffix cgo --ldflags="-s" -o bin/hello
