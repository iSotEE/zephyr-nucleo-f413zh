# SPDX-License-Identifier: Apache-2.0

cmake_minimum_required(VERSION 3.13.1)

include(../common/common.cmake NO_POLICY_SCOPE)

include($ENV{ZEPHYR_BASE}/cmake/app/boilerplate.cmake NO_POLICY_SCOPE)

project(sample_app)

target_sources(app PRIVATE $ENV{TM_DIR}/tm_porting_layer_zephyr.c)
