cmd_/home/orges/pa/device/xiaomi/whyred/headers//include/linux/caif/.install := /bin/sh scripts/headers_install.sh /home/orges/pa/device/xiaomi/whyred/headers//include/linux/caif ./include/uapi/linux/caif caif_socket.h if_caif.h; /bin/sh scripts/headers_install.sh /home/orges/pa/device/xiaomi/whyred/headers//include/linux/caif ./include/generated/uapi/linux/caif ; for F in ; do echo "$(pound)include <asm-generic/$$F>" > /home/orges/pa/device/xiaomi/whyred/headers//include/linux/caif/$$F; done; touch /home/orges/pa/device/xiaomi/whyred/headers//include/linux/caif/.install
