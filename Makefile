NAME = nickball/jmeter-base
VERSION = 2.13

.PHONY: all build 

all: build

build:
	docker build -t $(NAME):$(VERSION) --rm .

