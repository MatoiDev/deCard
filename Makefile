TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = deCard

include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = deCard
XCODEPROJ_NAME = deCard

include $(THEOS_MAKE_PATH)/xcodeproj.mk

deCard_FRAMEWORKS = UIKit CoreGraphics
deCard_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/application.mk
