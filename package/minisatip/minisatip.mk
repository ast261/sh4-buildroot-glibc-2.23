MINISATIP_VERSION = 0f10a5c6505c8ea561762f703e91724f0078aea4
MINISATIP_SITE = https://github.com/ast261/minisatip.git
MINISATIP_SITE_METHOD = git

MINISATIP_CONF_OPTS += --enable-axe --enable-dvbapi --enable-dvbcsa --disable-netcv

define MINISATIP_INSTALL_TARGET_CMDS
  $(INSTALL) -D -m 0755 $(@D)/minisatip $(TARGET_DIR)/sbin
  mkdir -p $(TARGET_DIR)/usr/share/minisatip
  cp -ar $(@D)/html $(TARGET_DIR)/usr/share/minisatip
endef

$(eval $(autotools-package))
