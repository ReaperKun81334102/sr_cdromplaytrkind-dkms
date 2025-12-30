obj-m += sr_mod.o
sr_mod-y := sr.o sr_ioctl.o sr_vendor.o

# カーネルビルドシステムを利用する設定
KVERSION ?= $(shell uname -r)
all:
	make -C /lib/modules/$(KVERSION)/build M=$(PWD) modules
clean:
	make -C /lib/modules/$(KVERSION)/build M=$(PWD) clean
