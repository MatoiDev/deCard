export TARGET = iphone:clang:14.4:10.0
export ARCHS = armv7 arm64

THEOS_PACKAGE_DIR = Releases
INSTALL_TARGET_PROCESSES = deCard
PACKAGE_VERSION = $(THEOS_PACKAGE_BASE_VERSION)$(DEBUG_EXT)

include $(THEOS)/makefiles/common.mk

XCODEPROJ_NAME = deCard

deCard_FRAMEWORKS = UIKit CoreGraphics
deCard_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/xcodeproj.mk
