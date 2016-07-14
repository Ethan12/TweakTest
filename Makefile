include $(THEOS)/makefiles/common.mk

TWEAK_NAME = TweakTest
TweakTest_FILES = Tweak.xm
TweakTest_FRAMEWORKS = UIKit
ARCHS = armv7 arm64

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "echo TweakTest install test"
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += tweaktest
include $(THEOS_MAKE_PATH)/aggregate.mk
