.PHONY: build save clean

build:
	docker build -t sslocal:latest .

save:
	docker save sslocal:latest -o sslocal_latest.tar

clean:
	rm -f sslocal_latest.tar
