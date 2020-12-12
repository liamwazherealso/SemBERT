docker-run:
	docker run --name sembert -d --gpus all -it --volume $(PWD):/SemBERT sembert:latest
docker-exec:
	docker exec -it sembert bash
docker-rm:
	docker stop sembert
	docker container rm sembert
docker-restart: docker-rm docker-run docker-exec
docker-build:
	docker build --tag sembert:latest .