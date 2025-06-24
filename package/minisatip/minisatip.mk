MINISATIP_VERSION = 01d7303b055b45e7775e38303d0ccc6403f87f68
MINISATIP_SITE = https://github.com/ast261/minisatip.git
MINISATIP_SITE_METHOD = git

MINISATIP_CONF_OPTS += --enable-axe --enable-dvbapi --enable-dvbcsa --disable-netcv

define MINISATIP_INSTALL_TARGET_CMDS
  $(INSTALL) -D -m 0755 $(@D)/minisatip $(TARGET_DIR)/sbin
  mkdir -p $(TARGET_DIR)/usr/share/minisatip
  cp -ar $(@D)/html/* $(TARGET_DIR)/usr/share/minisatip
endef

$(eval $(autotools-package))
