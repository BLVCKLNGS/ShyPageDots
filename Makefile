ARCHS := armv7 arm64 arm64e
TARGET := iphone:clang::6.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ShyPageDots
ShyPageDots_FILES = Tweak.xm
ShyPageDots_FRAMEWORKS = UIKit

ADDITIONAL-OBJCFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
