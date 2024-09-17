.PHONY: start
start:
	docker compose build
	docker compose up -d

.PHONY: stop
stop:
	docker compose stop && docker compose kill
	docker compose rm -f

.PHONY: clean
clean: stop
	docker images | grep "$$(pwd | grep -o '[^/]*$$')-livereload" | awk '{print $$3}' | xargs docker rmi -f
