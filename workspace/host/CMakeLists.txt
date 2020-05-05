# SPDX-License-Identifier: Apache-2.0

cmake_minimum_required(VERSION 3.13.1)

include(../common/host.cmake NO_POLICY_SCOPE)

project(sample_app)

target_sources(app PRIVATE src/main.c)
