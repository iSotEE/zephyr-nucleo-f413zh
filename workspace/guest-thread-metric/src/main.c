/*
 * Copyright (c) 2020 Yixiao Li <liyixiao7@gmail.com>
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <zephyr.h>
#include <misc/printk.h>
#include <shell/shell.h>
#include <shell/shell_uart.h>
#include <version.h>
#include <logging/log.h>
#include <stdlib.h>

extern int cmd_tm(const struct shell *shell, size_t argc, char **argv);

static char *argv[] = {"", "1"};

K_THREAD_DEFINE(CMD_TM_CALLER, 512/*STACKSIZE*/, cmd_tm, NULL, 2, argv, -CONFIG_NUM_COOP_PRIORITIES, 0, K_NO_WAIT);
