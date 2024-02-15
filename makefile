run:
	docker build --progress=plain -t nb .
	docker run --rm -p 8888:8888 nb