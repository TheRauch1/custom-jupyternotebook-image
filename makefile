run:
	docker buildx build --platform linux/amd64,linux/arm64 -t nb .
	docker run --rm -p 8888:8888 nb