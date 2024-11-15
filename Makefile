.PHONY: css
css:
	podman build --progress=plain -t daisy .
	podman run --name builder daisy
	podman cp builder:/tmp/output.css assets/output.css
	podman rm builder
