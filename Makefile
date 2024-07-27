DOCKERFILE_DIRS := $(shell find . -name Dockerfile -exec dirname {} \;)
BUILD_TARGETS := $(foreach dir,$(DOCKERFILE_DIRS),build-$(notdir $(dir)))

$(BUILD_TARGETS): build-%:
	@echo "Build $*"
	@docker --context desktop-linux build -t $*:latest -f ./$*/Dockerfile ./$*
	@echo ""

build: $(BUILD_TARGETS)

deploy: build
	docker-compose up -d

stop:
	docker-compose kill
