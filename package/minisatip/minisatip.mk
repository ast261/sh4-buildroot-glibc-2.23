MINISATIP_VERSION = ab5e7dc3d1d0d1f87377b3be40fe4d4866a1d532
MINISATIP_SITE = $(call github,ast261,minisatip,$(MINISATIP_VERSION))

MINISATIP_CONF_OPTS += \
      -DCMAKE_BUILD_TYPE=Release \
      -DAXE=ON \
      -DDVBCSA=$(if $(BR2_PACKAGE_LIBDVBCSA),ON,OFF) \
      -DNETCVCLIENT=OFF

$(eval $(cmake-package))
