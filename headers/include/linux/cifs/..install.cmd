cmd_/home/orges/pa/device/xiaomi/whyred/headers//include/linux/cifs/.install := /bin/sh scripts/headers_install.sh /home/orges/pa/device/xiaomi/whyred/headers//include/linux/cifs ./include/uapi/linux/cifs ; /bin/sh scripts/headers_install.sh /home/orges/pa/device/xiaomi/whyred/headers//include/linux/cifs ./include/generated/uapi/linux/cifs ; for F in ; do echo "$(pound)include <asm-generic/$$F>" > /home/orges/pa/device/xiaomi/whyred/headers//include/linux/cifs/$$F; done; touch /home/orges/pa/device/xiaomi/whyred/headers//include/linux/cifs/.install
