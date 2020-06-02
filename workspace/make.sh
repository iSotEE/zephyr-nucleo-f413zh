#APP_DIR=baseline-host
APP_DIR=baseline-guest
#APP_DIR=guest-usb
#APP_DIR=guest-thread-metric
#APP_DIR=host
#APP_DIR=host-thread-metric

cd `readlink -e .`
rm -rf build
export ZEPHYR_TOOLCHAIN_VARIANT=gnuarmemb
export CMAKE_BUILD_PARALLEL_LEVEL= # Enable parallel build
time west build -b nucleo_f413zh $APP_DIR -- -G"Eclipse CDT4 - Unix Makefiles"

[[ $APP_DIR == host* || $APP_DIR == baseline* ]] && cp build/zephyr/zephyr.elf zephyr-host.elf
[[ $? != 0 ]] && cp build/zephyr/zephyr.elf zephyr-guest.elf
