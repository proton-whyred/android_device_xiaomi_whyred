cmd_/home/orges/pa/device/xiaomi/whyred/headers//include/linux/genwqe/.install := /bin/sh scripts/headers_install.sh /home/orges/pa/device/xiaomi/whyred/headers//include/linux/genwqe ./include/uapi/linux/genwqe ; /bin/sh scripts/headers_install.sh /home/orges/pa/device/xiaomi/whyred/headers//include/linux/genwqe ./include/generated/uapi/linux/genwqe ; for F in ; do echo "$(pound)include <asm-generic/$$F>" > /home/orges/pa/device/xiaomi/whyred/headers//include/linux/genwqe/$$F; done; touch /home/orges/pa/device/xiaomi/whyred/headers//include/linux/genwqe/.install
