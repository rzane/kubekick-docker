VERSION?=1.0.0

all: base cloudbuild base.push cloudbuild.push

.PHONY: base
base:
	docker build -t rzane/kubekick:latest -t rzane/kubekick:$(VERSION) --build-arg VERSION=$(VERSION) base

.PHONY: cloudbuild
cloudbuild:
	docker build -t rzane/kubekick:cloudbuild -t rzane/kubekick:cloudbuild-$(VERSION) --build-arg VERSION=$(VERSION) cloudbuild

base.push:
	docker push rzane/kubekick:latest
	docker push rzane/kubekick:$(VERSION)

cloudbuild.push:
	docker push rzane/kubekick:cloudbuild
	docker push rzane/kubekick:$(VERSION)-cloudbuild
