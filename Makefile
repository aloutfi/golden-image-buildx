PROJECT?=golden-image-buildx
ACCOUNT=aloutfi/$(PROJECT)
IMAGE=golden-image-buildx
VERSION?=`git rev-parse --abbrev-ref HEAD | sed -nre 's/^[^0-9]*(([0-9]+\.)*[0-9]+).*/\1/p'`

.PHONY: build shell push show_image tag untag

build:
	@docker build . -t $(ACCOUNT)/$(IMAGE):$(VERSION)

shell:
	@docker run $(TTY) $(VOLUMES) $(ENVIRONMENT) $(ACCOUNT)/$(IMAGE):$(VERSION) sh

push:
	@docker push $(ACCOUNT)/$(IMAGE):$(VERSION)

show_image:
	@docker images $(ACCOUNT)/$(IMAGE):$(VERSION)

tag:
	-git tag -a $(VERSION) -m "Version $(VERSION)"
	git push origin --tags

untag:
	-git tag -d $(VERSION)
	git push origin ":refs/tags/$(VERSION)"