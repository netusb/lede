#
# Copyright (C) 2019 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define KernelPackage/essedma
  SUBMENU:=Network Devices
  TITLE:=QCA IPQ40xx ethernet driver
  DEPENDS:=@TARGET_ipq40xx
  KCONFIG:=CONFIG_ESSEDMA
  FILES:= \
	$(LINUX_DIR)/drivers/net/ethernet/qualcomm/essedma/essedma.ko
  AUTOLOAD:=$(call AutoLoad,45,essedma)
endef

define KernelPackage/essedma/description
  Kernel modules for IPQ40xx integrated ethernet adapater.
endef

$(eval $(call KernelPackage,essedma))
