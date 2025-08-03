MINISATIP_VERSION = v2.0.5-axe
MINISATIP_SITE = $(call github,ast261,minisatip,$(MINISATIP_VERSION))

MINISATIP_CONF_OPTS += --enable-axe --enable-dvbapi --enable-dvbcsa --disable-netcv

MINISATIP_MAKE_OPTS += TAG=$(MINISATIP_VERSION)

define MINISATIP_INSTALL_TARGET_CMDS
  $(INSTALL) -D -m 0755 $(@D)/minisatip $(TARGET_DIR)/sbin
  mkdir -p $(TARGET_DIR)/usr/share/minisatip
  cp -ar $(@D)/html $(TARGET_DIR)/usr/share/minisatip
endef

$(eval $(autotools-package))
