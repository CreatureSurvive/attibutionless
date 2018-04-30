DEBUG = 0
FINALPACKAGE = 1
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = attibutionless
attibutionless_FILES = Tweak.xm
ADDITIONAL_OBJCFLAGS += -fobjc-arc -w

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
