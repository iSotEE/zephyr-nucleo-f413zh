#
# Copyright (c) 2020 Yixiao Li <liyixiao7@gmail.com>
#
# SPDX-License-Identifier: Apache-2.0
#

set(ENV{ISOTEE_DIR} $ENV{ZEPHYR_BASE}/../isotee/target/nucleo_f413zh/zephyr)
set(ENV{TM_DIR} $ENV{ZEPHYR_BASE}/../thread_metric_test_suite)

set(SYSCALL_INCLUDE_DIRECTORY --include $ENV{ISOTEE_DIR}/host)
