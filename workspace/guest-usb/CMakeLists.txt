#SPDX-License-Identifier: Apache-2.0

cmake_minimum_required(VERSION 3.13.1)

include(../common/guest.cmake NO_POLICY_SCOPE)

project(sample_app)

project(guest-usb)

target_sources(app PRIVATE src/socket_dumb_http.c)

set(gen_dir ${ZEPHYR_BINARY_DIR}/include/generated/)
generate_inc_file_for_target(app src/response_small.html.bin ${gen_dir}/response_small.html.bin.inc)
generate_inc_file_for_target(app src/response_big.html.bin   ${gen_dir}/response_big.html.bin.inc)
