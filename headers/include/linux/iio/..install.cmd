cmd_/home/orges/pa/device/xiaomi/whyred/headers//include/linux/iio/.install := /bin/sh scripts/headers_install.sh /home/orges/pa/device/xiaomi/whyred/headers//include/linux/iio ./include/uapi/linux/iio events.h types.h; /bin/sh scripts/headers_install.sh /home/orges/pa/device/xiaomi/whyred/headers//include/linux/iio ./include/generated/uapi/linux/iio ; for F in ; do echo "$(pound)include <asm-generic/$$F>" > /home/orges/pa/device/xiaomi/whyred/headers//include/linux/iio/$$F; done; touch /home/orges/pa/device/xiaomi/whyred/headers//include/linux/iio/.install