include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = TweakTest
TweakTest_FILES = EMMRootListController.m
TweakTest_INSTALL_PATH = /Library/PreferenceBundles
TweakTest_FRAMEWORKS = UIKit
TweakTest_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/TweakTest.plist$(ECHO_END)
