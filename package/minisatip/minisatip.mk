MINISATIP_VERSION = 6f784a84840e331c6056021f34718daa7796e46f
MINISATIP_SITE = $(call github,ast261,minisatip,$(MINISATIP_VERSION))

MINISATIP_CONF_OPTS += --enable-axe --enable-dvbapi --enable-dvbcsa --disable-netcv

MINISATIP_MAKE_OPTS += VERSION=v1.3.57

define MINISATIP_INSTALL_TARGET_CMDS
  $(INSTALL) -D -m 0755 $(@D)/minisatip $(TARGET_DIR)/sbin
  mkdir -p $(TARGET_DIR)/usr/share/minisatip
  cp -ar $(@D)/html $(TARGET_DIR)/usr/share/minisatip
endef

$(eval $(autotools-package))
