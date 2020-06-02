#
# Copyright (c) 2020 Yixiao Li <liyixiao7@gmail.com>
#
# SPDX-License-Identifier: Apache-2.0
#

include(${CMAKE_CURRENT_LIST_DIR}/common.cmake NO_POLICY_SCOPE)

set(ARCH_ROOT $ENV{ISOTEE_DIR}/guest/zephyr)
set(SOC_ROOT ${ARCH_ROOT})

include($ENV{ZEPHYR_BASE}/cmake/app/boilerplate.cmake NO_POLICY_SCOPE)

add_subdirectory(${ARCH_ROOT} isotee-guest)
target_sources(app PRIVATE $ENV{ISOTEE_DIR}/para/isotee_para.c)
zephyr_include_directories($ENV{ISOTEE_DIR}/para)
