
CC = g++
CFLAGS = -c -Wall -O2 -pipe -march=armv6j -mtune=arm1176jzf-s -mfpu=vfp -mfloat-abi=hard
LIBS = -lrf24-bcm
SOURCES =  PL1167_nRF24.cpp MiLightRadio.cpp openmilight.cpp
BIN = openmilight

all: $(SOURCES) $(BIN)

$(BIN):	$(SOURCES:.cpp=.o)
	$(CC) $^ -o $@ $(LIBS)

%.o: %.cpp
	$(CC) $(CFLAGS) -o $@ $<

clean:
	rm -f *.o $(BIN)

