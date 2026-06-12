OSCAM_VERSION = dd70372565c1d5ac1d41a8d38cc21c5a12615041
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
