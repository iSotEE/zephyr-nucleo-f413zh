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

static int cmd_guest(const struct shell *shell, size_t argc, char **argv)
{
	ARG_UNUSED(argc);
	ARG_UNUSED(argv);

	printf("Start iSotEE guest...\n");

    extern void _isotee_start_guest();
    _isotee_start_guest();

    static char *cmd_tm_argv[] = {"", "8"};
    cmd_tm(shell, 2, cmd_tm_argv);

	return 0;
}

SHELL_CMD_ARG_REGISTER(guest, NULL, "Start iSotEE guest", cmd_guest, 1, 0);

void main(void)
{
    #warning "USERSETMPEND is enabled for testing."
    SCB->CCR |= SCB_CCR_USERSETMPEND_Msk;
}
