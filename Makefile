up: _up
build: _build
down: _down
in: _in
yarn: _yarn
watch: _watch
prod: _prod

_build:
	docker-compose build && docker-compose up -d

_up:
	docker-compose up -d

_down:
	docker-compose down

_in:
	docker exec -it parser_php bash

_yarn:
	cd parser && yarn install

_watch:
	cd parser && yarn encore dev --watch

_prod:
	cd parser && yarn encore production