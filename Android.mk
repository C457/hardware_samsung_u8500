# Copyright (C) 2014 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

ifneq ($(TARGET_SOC),u8500)

# Audio
PRODUCT_PACKAGES += \
   libasound
$(call inherit-product, hardware/u8500/audio/libasound/alsa-lib-products.mk)

# Display 
PRODUCT_PACKAGES += \
   lights.montblanc \
   gralloc.montblanc \
   hwcomposer.montblanc \
   copybit.montblanc \
   libblt_hw

# Media
PRODUCT_PACKAGES += \
   libomxil-bellagio \
   libstelpcutils

# WLAN
PRODUCT_PACKAGES += \
   iw

# External
PRODUCT_PACKAGES += \
   memtrack.montblanc

endif
