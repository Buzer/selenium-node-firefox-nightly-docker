IMAGE ?= buzer/selenium-node-firefox-nightly-docker
TAG := $(shell date "+%Y%m%d")

all: docker

docker:	
	mkdir -p files
	curl https://nightly.mozilla.org/ | grep x86_64.tar.bz2 | grep -v taskcluster | grep -Eo '".*"' | xargs wget -O files/nightly.tar.bz2
	docker build -t $(IMAGE):$(TAG) .
clean:
	rm -rf files