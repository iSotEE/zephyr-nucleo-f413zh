#APP_DIR=baseline-host
APP_DIR=baseline-guest
#APP_DIR=guest-usb
#APP_DIR=guest-thread-metric
#APP_DIR=host

cd `readlink -e .`
rm -rf build
export ZEPHYR_TOOLCHAIN_VARIANT=gnuarmemb
export GNUARMEMB_TOOLCHAIN_PATH=~/isotee/gcc-arm-none-eabi-9-2019-q4-major
west build -b nucleo_f413zh $APP_DIR -- -G"Eclipse CDT4 - Unix Makefiles"

[[ $APP_DIR == host* || $APP_DIR == baseline* ]] && cp build/zephyr/zephyr.elf zephyr-host.elf
[[ $? != 0 ]] && cp build/zephyr/zephyr.elf zephyr-guest.elf
