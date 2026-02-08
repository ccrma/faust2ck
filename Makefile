TARGET = faust2ck
SRC_DIR = src
DSP_DIR = dsp
BUILD_DIR = builds

DSP_SOURCES := $(wildcard $(DSP_DIR)/*.dsp)

OBJECTS := $(patsubst $(DSP_DIR)/%.dsp,$(BUILD_DIR)/%/%.chug,$(DSP_SOURCES))

.PHONY: all clean FORCE

all: $(TARGET) $(OBJECTS)

$(TARGET): $(SRC_DIR)/$(TARGET)
	cp $< $@

$(SRC_DIR)/$(TARGET): FORCE
	$(MAKE) -C $(SRC_DIR)

$(BUILD_DIR)/%/%.chug: $(DSP_DIR)/%.dsp $(TARGET)
	@mkdir -p $(dir $@)
	./$(TARGET) $<
	mv $*.chug $(dir $@)
	@mkdir -p $(dir $@)_examples
	mv $*-test.ck $(dir $@)_examples/

clean:
	rm -f $(TARGET)
	rm -rf $(BUILD_DIR)
	$(MAKE) -C $(SRC_DIR) clean