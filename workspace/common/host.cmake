#
# Copyright (c) 2020 Yixiao Li <liyixiao7@gmail.com>
#
# SPDX-License-Identifier: Apache-2.0
#

include(${CMAKE_CURRENT_LIST_DIR}/common.cmake NO_POLICY_SCOPE)

set(SYSCALL_INCLUDE_DIRECTORY --include $ENV{ISOTEE_DIR}/host)

include($ENV{ZEPHYR_BASE}/cmake/app/boilerplate.cmake NO_POLICY_SCOPE)

add_subdirectory($ENV{ISOTEE_DIR}/host isotee-host)
