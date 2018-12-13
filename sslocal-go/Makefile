.PHONY: build save clean

build:
	docker build -t sslocal-go:latest .

save:
	docker save sslocal-go:latest -o sslocal-go_latest.tar

clean:
	rm -f sslocal-go_latest.tar
