DOCKERFILE_DIRS := $(shell find ./docker -name Dockerfile -exec dirname {} \;)
BUILD_TARGETS := $(foreach dir,$(DOCKERFILE_DIRS),build-$(notdir $(dir)))

$(BUILD_TARGETS): build-%:
	@echo "Build $*"
	@docker build -t $*:latest -f ./docker/$*/Dockerfile ./docker/$*
	@echo ""

build: $(BUILD_TARGETS)

deploy: build
	docker-compose up -d

stop:
	docker-compose kill
