#MSM_VIDC_TARGET_LIST := msmnile

ifeq ($(call is-board-platform-in-list, $(QCOM_BOARD_PLATFORMS)),true)

#MM_CORE
MM_CORE := libmm-omxcore
MM_CORE += libOmxCore

PRODUCT_PACKAGES += $(MM_CORE)

endif

ifeq ($(call is-board-platform-in-list, $(MSM_VIDC_TARGET_LIST)), true)

MM_VIDEO := ExoplayerDemo
MM_VIDEO += libc2dcolorconvert
MM_VIDEO += libOmxSwVdec
MM_VIDEO += libOmxSwVencMpeg4
MM_VIDEO += libOmxVdec
MM_VIDEO += libOmxVenc
MM_VIDEO += libstagefrighthw

PRODUCT_PACKAGES += $(MM_VIDEO)

ifeq ($(call is-board-platform-in-list, msmnile $(MSMSTEPPE)),true)
include hardware/qcom/sm8150/media/conf_files/$(TARGET_BOARD_PLATFORM)/$(TARGET_BOARD_PLATFORM).mk
endif

endif
