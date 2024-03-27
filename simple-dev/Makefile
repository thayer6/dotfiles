dev:
	docker-compose up -d
	docker-compose exec -it dev-env zsh

restart:
	docker-compose down
	docker build -t dev-env .
	docker-compose up -d
	docker-compose exec -it dev-env zsh
