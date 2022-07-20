DHRY-LFLAGS =

DHRY-CFLAGS := -O3 -DCLOCK_GETTIME

#Uncomment below for FPGA run, default DHRY_ITERS is 2000 for RTL
DHRY-CFLAGS += -DDHRY_ITERS=20000000

SRC = dhry_1.c dhry_2.c
HDR = dhry.h

override CFLAGS += $(DHRY-CFLAGS)
dhrystone: $(SRC) $(HDR)
	$(CC) $(CFLAGS) $(SRC) $(LDFLAGS) $(LOADLIBES) $(LDLIBS) -o $@

clean:
	rm -f *.i *.s *.o dhrystone dhrystone.hex

