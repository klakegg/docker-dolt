prepare:
	@docker run --rm -i \
		-v $$(pwd):/work \
		-u $$(id -u) \
		klakegg/docker-project-prepare:edge

build:
	@make -f target/Makefile all

push-edge:
	@make -f target/Makefile push-edge

push-stable:
	@make -f target/Makefile push-stable