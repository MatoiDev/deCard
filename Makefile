export TARGET = iphone:clang:14.4:10.0
export ARCHS = armv7 arm64

THEOS_PACKAGE_DIR = Releases
INSTALL_TARGET_PROCESSES = deCard

include $(THEOS)/makefiles/common.mk

XCODEPROJ_NAME = deCard

deCard_FRAMEWORKS = UIKit CoreGraphics
deCard_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/xcodeproj.mk


after-install::
	install.exec "killall -9 ${XCODEPROJ_NAME}; uicache -p /Applications/${XCODEPROJ_NAME}.app;"
