
.PHONY: build push

build: bin/hello
	docker build -t xytis/hello .

push: build
	docker push xytis/hello

bin/:
	mkdir bin/

bin/hello: bin/
	CGO_ENABLED=0 go build -a --installsuffix cgo --ldflags="-s" -o bin/hello
