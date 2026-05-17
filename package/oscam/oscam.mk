OSCAM_VERSION = 11a966f71a230b494d615b35b400f6c2fb2649da
OSCAM_SITE = https://git.streamboard.tv/common/oscam.git
OSCAM_SITE_METHOD = git

define OSCAM_BUILD_CMDS
	$(MAKE) -C $(@D) \
		CC="$(TARGET_CC)" \
		CROSS=$(TARGET_CROSS) \
		OSCAM_BIN=oscam
endef

define OSCAM_INSTALL_TARGET_CMDS
  $(INSTALL) -D -m 0755 $(@D)/oscam $(TARGET_DIR)/usr/bin/oscam
endef

$(eval $(generic-package))
