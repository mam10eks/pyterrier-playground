start-jupyter: build-docker-file
	docker run --rm -ti -p 8888:8888 --user $$(id -u):$$(id -g) --group-add users -v $${PWD}:/home/jovyan/ pyterrier-datascience-notebook

build-docker-file:
	docker build -t pyterrier-datascience-notebook .
