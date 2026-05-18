MINISATIP_VERSION = 274be67c32f3de9c6caea4b8e47f516ab561bc97
MINISATIP_SITE = $(call github,ast261,minisatip,$(MINISATIP_VERSION))

MINISATIP_CONF_OPTS += \
      -DCMAKE_BUILD_TYPE=Release \
      -DAXE=ON \
      -DDVBCSA=$(if $(BR2_PACKAGE_LIBDVBCSA),ON,OFF) \
      -DNETCVCLIENT=OFF

$(eval $(cmake-package))
