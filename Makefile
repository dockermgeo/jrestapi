
IMAGE=dockermgeo/japi


java.build:
	#mvn clean package
	mvn package

docker.run:
	docker run -ti --rm -p 8080:8080 $(IMAGE)

docker.build: java.build
	docker build -t $(IMAGE) .
