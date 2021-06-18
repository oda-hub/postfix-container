tag=$(shell git describe --always --tags)
image=odahub/postfix:$(tag)

push: build
	docker push $(image) 

build: 
	docker build -t $(image) .

