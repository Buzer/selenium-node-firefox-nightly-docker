##Building

```
make
```

##Running latest version

```
docker run --rm --link selenium-hub:hub buzer/selenium-node-firefox-nightly-docker:$(docker images | grep selenium-node-firefox-nightly-docker | awk '{ print $2;}' | sort | tail -n1)
```
