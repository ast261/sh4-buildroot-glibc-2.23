SH4_TOOLCHAIN_GCC_VERSION = 4.9.4
SH4_TOOLCHAIN_GCC_SITE = https://github.com/ast261/sh4-buildroot-glibc-2.23/releases/download/gcc-$(SH4_TOOLCHAIN_GCC_VERSION)
SH4_TOOLCHAIN_GCC_SOURCE = sh4-toolchain-gcc-$(SH4_TOOLCHAIN_GCC_VERSION).tar.xz

$(eval $(generic-package))
