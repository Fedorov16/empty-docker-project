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
	docker exec -it code_php bash

_yarn:
	cd code && yarn install

_watch:
	cd code && yarn encore dev --watch

_prod:
	cd code && yarn encore production