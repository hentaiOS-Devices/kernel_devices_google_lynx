M ?= $(shell pwd)

KBASE_PATH_RELATIVE = $(M)

KBUILD_OPTIONS += CONFIG_DRM_PANEL_SAMSUNG_S6E3FC3_L10=m
KBUILD_OPTIONS += CONFIG_DRM_PANEL_SAMSUNG_S6E3FC5=m

EXTRA_CFLAGS += -DDYNAMIC_DEBUG_MODULE=1
EXTRA_CFLAGS += -I$(KERNEL_SRC)/../google-modules/display
EXTRA_CFLAGS += -Werror

EXTRA_SYMBOLS += $(OUT_DIR)/../google-modules/display/samsung/Module.symvers

modules modules_install clean:
	$(MAKE) -C $(KERNEL_SRC) M=$(M) W=1 \
	$(KBUILD_OPTIONS) \
	EXTRA_CFLAGS="$(EXTRA_CFLAGS)" \
	KBUILD_EXTRA_SYMBOLS="$(EXTRA_SYMBOLS)" \
	$(@)
