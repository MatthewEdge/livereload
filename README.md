# LiveReload

Compose environment that exposes live-reload on port :8000. Keeps me from having
to install NPM on the source machine :D

NOTE: A build arg for `BROWSER` is set in `compose.yaml`.

* `make start` to start the container
* `make stop` to stop, but not delete, the container
* `make clean` stops the container AND deletes the associated image
