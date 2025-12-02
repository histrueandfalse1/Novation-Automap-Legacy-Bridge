BUILD_DIR := build
TARGET := AutomapRev

all: build

build: $(BUILD_DIR)/Makefile
	cmake --build $(BUILD_DIR)

$(BUILD_DIR)/Makefile:
	mkdir -p $(BUILD_DIR)
	cd $(BUILD_DIR) && cmake ..

clean:
	rm -rf $(BUILD_DIR)

run: build
	$(BUILD_DIR)/$(TARGET)

.PHONY: clean all build run