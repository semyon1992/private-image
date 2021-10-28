all: build

build:
	@echo "Building image"
	docker build -f Dockerfile . -t jsapp

install:
	@echo "Start container"
	docker run -d --name jsapp -p 3000:3000 jsapp

clean:
	@echo "Cleaning up..."
	docker stop jsapp
	docker rm jsapp
