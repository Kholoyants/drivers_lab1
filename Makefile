ifneq ($(KERNELRELEASE),)
obj-m := hello.o
else
KDIR := /lib/modules/4.14.41/build/

all:
	$(MAKE) -C $(KDIR) M=$$PWD
endif
