NAME=lookupsrv
VERSION=0.0.1

build:
	rm -rf release
	GOOS=linux go build -o ./build/Linux/$(NAME)
	GOOS=darwin go build -o ./build/Darwin/$(NAME)

release:
	mkdir -p release
	tar -zcf release/$(NAME)_$(VERSION)_Linux.tgz -C build/Linux $(NAME)
	tar -zcf release/$(NAME)_$(VERSION)_Darwin.tgz -C build/Darwin $(NAME)
	gh-release create lalyos/$(NAME) $(VERSION)

.PHONY: build
