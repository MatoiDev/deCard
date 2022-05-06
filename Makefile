TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = deCard

include $(THEOS)/makefiles/common.mk

XCODEPROJ_NAME = deCard

deCard_FRAMEWORKS = UIKit CoreGraphics
deCard_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/xcodeproj.mk
