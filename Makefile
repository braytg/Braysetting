TARGET = iphone:clang:latest:16.0
ARCHS = arm64
THEOS_PACKAGE_SCHEME = rootless
INSTALL_TARGET_PROCESSES = Preferences

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = BraySettings
BraySettings_FILES = Tweak.xm
BraySettings_CFLAGS = -fobjc-arc
BraySettings_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
