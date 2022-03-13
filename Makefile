TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = deCard

include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = deCard

deCard_FILES = main.m AppDelegate.m ViewController.m Cards.bundle SceneDelegate.m CreditViewController.m CardViewController.m Assets.xcassets Base.lproj/LaunchScreen.storyboard Base.lproj/Main.storyboard
deCard_FRAMEWORKS = UIKit CoreGraphics
deCard_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/application.mk
