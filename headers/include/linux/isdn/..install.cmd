cmd_/home/orges/pa/device/xiaomi/whyred/headers//include/linux/isdn/.install := /bin/sh scripts/headers_install.sh /home/orges/pa/device/xiaomi/whyred/headers//include/linux/isdn ./include/uapi/linux/isdn capicmd.h; /bin/sh scripts/headers_install.sh /home/orges/pa/device/xiaomi/whyred/headers//include/linux/isdn ./include/generated/uapi/linux/isdn ; for F in ; do echo "$(pound)include <asm-generic/$$F>" > /home/orges/pa/device/xiaomi/whyred/headers//include/linux/isdn/$$F; done; touch /home/orges/pa/device/xiaomi/whyred/headers//include/linux/isdn/.install