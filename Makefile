build-image:
	docker build . -t linkedin-post-gen

run:
	docker kill linkedin-post-gen || true
	docker rm linkedin-post-gen || true
	docker run --name linkedin-post-gen -p 3000:3000 -d linkedin-post-gen:latest