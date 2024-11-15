.PHONY: css
css:
	docker build -t daisy .
	docker run --name builder daisy
	docker cp builder:/tmp/output.css assets/output.css
	docker rm builder
