################################################################################
#
# libdvbcsa
#
################################################################################

LIBDVBCSA_VERSION = 2e69227b2dba26d14589acdfc9a4667ec01a9383
LIBDVBCSA_SITE = https://github.com/catalinii/libdvbcsa.git
LIBDVBCSA_SITE_METHOD = git
LIBDVBCSA_LICENSE = GPL-2.0+
LIBDVBCSA_LICENSE_FILES = COPYING

LIBDVBCSA_PRE_CONFIGURE_HOOKS += LIBDVBCSA_RUN_BOOTSTRAP

define LIBDVBCSA_RUN_BOOTSTRAP
    cd $(@D) && ./bootstrap
endef

ifeq ($(BR2_X86_CPU_HAS_MMX),y)
LIBDVBCSA_CONF_OPTS += --enable-mmx
else
LIBDVBCSA_CONF_OPTS += --disable-mmx
endif

ifeq ($(BR2_X86_CPU_HAS_SSE2),y)
LIBDVBCSA_CONF_OPTS += --enable-sse2
else
LIBDVBCSA_CONF_OPTS += --disable-sse2
endif

ifeq ($(BR2_POWERPC_CPU_HAS_ALTIVEC),y)
LIBDVBCSA_CONF_OPTS += --enable-altivec
LIBDVBCSA_CONF_ENV = CFLAGS="$(TARGET_CFLAGS) -flax-vector-conversions"
else
LIBDVBCSA_CONF_OPTS += --disable-altivec
endif

$(eval $(autotools-package))
