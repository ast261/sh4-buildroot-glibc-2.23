MINISATIP_LEGACY_VERSION = bd6b566fd97e4fa4c032580371fbf1451efbc2dc
MINISATIP_LEGACY_SITE = $(call github,ast261,minisatip,$(MINISATIP_LEGACY_VERSION))

MINISATIP_LEGACY_CONF_OPTS += --enable-axe --enable-dvbapi --enable-dvbcsa --disable-netcv

MINISATIP_LEGACY_MAKE_OPTS += VERSION=v1.3.57

define MINISATIP_LEGACY_INSTALL_TARGET_CMDS
  $(INSTALL) -D -m 0755 $(@D)/minisatip $(TARGET_DIR)/sbin/minisatip-legacy
  mkdir -p $(TARGET_DIR)/usr/share/minisatip-legacy
  cp -ar $(@D)/html $(TARGET_DIR)/usr/share/minisatip-legacy
endef

$(eval $(autotools-package))
