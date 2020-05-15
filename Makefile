build:
	docker build -t surenpi/test:nginx . -f Dockerfile-1
run:
	docker run --name nginx -d -p 80:80 --rm surenpi/test:nginx
	docker logs -f nginx

restart: build
	docker stop nginx
	make run

build4:
	docker build -t surenpi/test:4 . -f Dockerfile
run4:
	docker run --name nginx4 -d -p 80:80 --rm surenpi/test:4
	docker logs -f nginx4
restart4: build4
	docker stop nginx4
	make run4