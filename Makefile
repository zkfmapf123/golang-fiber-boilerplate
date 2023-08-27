rds-stop:
	@docker stop `docker ps -a --filter "ancestor=rds" --quiet"` && docker rm rds docker stop `docker ps -a --filter "ancestor=rds" --quiet`
rds:
	@docker build -t rds -f Dockerfile.mysql . && docker run -d -p 3306:3306 -v ${PWD}/db:/var/lib/mysql rds
