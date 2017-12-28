build:
	docker build . -t letsencrypt-getter

run:
	docker run --name letsencrypt-getter --rm --publish 80:80 --publish 443:443 --volume http-proxy-certs:/etc/letsencrypt --network service_net letsencrypt-getter

run-debug:
	docker run -it --name letsencrypt-getter --rm --publish 80:80 --publish 443:443 --volume http-proxy-certs:/etc/letsencrypt --network service_net letsencrypt-getter /bin/sh

.PHONY: build run run-debug
