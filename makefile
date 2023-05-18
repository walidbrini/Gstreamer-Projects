CC := gcc
CFLAGS := `pkg-config --cflags gstreamer-1.0`
LIBS := `pkg-config --libs gstreamer-1.0`

TARGET := basic-tutorial-1

$(TARGET): basic-tutorial-1.c
	$(CC) $(CFLAGS) -o $(TARGET) basic-tutorial-1.c $(LIBS)

.PHONY: clean

clean:
	rm -f $(TARGET)