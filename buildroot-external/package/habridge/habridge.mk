#############################################################
#
# habridge from https://github.com/bwssytems/ha-bridge
#
#############################################################

HABRIDGE_VERSION = 4.2.0
HABRIDGE_SITE = $(BR2_EXTERNAL)/package/habridge
HABRIDGE_SITE_METHOD = local
HABRIDGE_LICENSE = Apache2
HABRIDGE_INSTALL_TARGET = YES

define HABRIDGE_BUILD_CMDS
endef

define HABRIDGE_INSTALL_TARGET_CMDS
  $(INSTALL) -D -m 0755 $(@D)/ha-bridge-$(HABRIDGE_VERSION).jar $(TARGET_DIR)/opt/habridge/ha-bridge.jar
endef

define HABRIDGE_INSTALL_INIT_SYSV
	$(INSTALL) -D -m 0755 $(@D)/S96habridge $(TARGET_DIR)/etc/init.d/S96habridge
endef

$(eval $(generic-package))
