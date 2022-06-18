.PHONY: help start stop

.DEFAULT_GOAL := help

help: # Show Help
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n\nTargets:\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-10s\033[0m %s\n", $$1, $$2 }' $(MAKEFILE_LIST)

install: ## First entry command to install all the necessary
	make startd
	echo "Adding web-server.test to /etc/hosts"
	sudo -- sh -c 'echo "127.0.0.1 web-server.test" >> /etc/hosts'

start: ## Start docker-compose
	@docker-compose up

startd: ## Startd
	@docker-compose up -d

stop: ## Stop
	@docker-compose stop