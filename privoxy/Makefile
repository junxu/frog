.PHONY: build save clean

build:
	docker build -t privoxy:latest .

save:
	docker save privoxy:latest -o privoxy_latest.tar

clean:
	rm -f privoxy_latest.tar
