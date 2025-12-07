#
# Copyright (C) 2023 Salvo Giangreco
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

# UN1CA debloat list
# - Add entries inside the specific partition containing that file (<PARTITION>_DEBLOAT+="")
# - DO NOT add the partition name at the start of any entry (eg. "/system/dpolicy_system")
# - DO NOT add a slash at the start of any entry (eg. "/dpolicy_system")

# Samsung Defex policy
SYSTEM_DEBLOAT+="
dpolicy_system
"
VENDOR_DEBLOAT+="
etc/dpolicy
"

# Samsung SIM Unlock
SYSTEM_DEBLOAT+="
system/bin/ssud
system/etc/init/ssu_r12sxxx.rc
system/etc/init/ssu.rc
system/etc/permissions/privapp-permissions-com.samsung.ssu.xml
system/etc/sysconfig/samsungsimunlock.xml
system/lib64/android.security.securekeygeneration-ndk.so
system/lib64/vendor.samsung.hardware.security.ssu-V1-ndk.so
system/lib64/libssu_keystore2.so
system/priv-app/SsuService
"

# Recovery restoration script
VENDOR_DEBLOAT+="
recovery-from-boot.p
bin/install-recovery.sh
etc/init/vendor_flash_recovery.rc
"

# Apps debloat
PRODUCT_DEBLOAT+="
app/Chrome64
app/Duo
app/Gmail2
app/Maps
app/YouTube
overlay/GmsConfigOverlaySearchSelector.apk
priv-app/Messages
priv-app/SearchSelector
app/DuoStub
app/SpeechServicesByGoogle
priv-app/AndroidAutoStub
priv-app/AndroidSystemIntelligence
priv-app/FamilyLinkParentalControls
priv-app/GoogleRestore
priv-app/PrivateComputeServices
priv-app/Turbo
priv-app/AiWallpaper
"

SYSTEM_DEBLOAT+="
system/app/CarrierDefaultApp
system/app/ccinfo
system/app/ChromeCustomizations
system/app/Fast
system/app/FBAppManager_NS
system/app/KidsHome_Installer
system/app/MAPSAgent
system/app/MDMApp
system/app/PlayAutoInstallConfig
system/app/Rampart
system/app/SamsungPassAutofill_v1
system/app/SamsungTTS
system/app/SamsungTTSVoice_ar_AE_m00
system/app/SamsungTTSVoice_de_DE_f00
system/app/SamsungTTSVoice_en_GB_f00
system/app/SamsungTTSVoice_es_ES_f00
system/app/SamsungTTSVoice_es_MX_f00
system/app/SamsungTTSVoice_es_US_f00
system/app/SamsungTTSVoice_fr_FR_f00
system/app/SamsungTTSVoice_hi_IN_f00
system/app/SamsungTTSVoice_id_ID_f00
system/app/SamsungTTSVoice_it_IT_f00
system/app/SamsungTTSVoice_pl_PL_f00
system/app/SamsungTTSVoice_pt_BR_f00
system/app/SamsungTTSVoice_ru_RU_f00
system/app/SamsungTTSVoice_th_TH_f00
system/app/SamsungTTSVoice_vi_VN_f00
system/app/SilentLog
system/app/SimAppDialog
system/app/Traceur
system/app/UniversalMDMClient
system/app/WifiGuider
system/etc/default-permissions/default-permissions-com.sec.spp.push.xml
system/etc/init/digitalkey_init_ble_tss2.rc
system/etc/init/samsung_pass_authenticator_service.rc
system/etc/permissions/authfw.xml
system/etc/permissions/com.samsung.feature.ipsgeofence.xml
system/etc/permissions/com.samsung.feature.samsungpositioning.xml
system/etc/permissions/org.carconnectivity.android.digitalkey.rangingintent.xml
system/etc/permissions/org.carconnectivity.android.digitalkey.secureelement.xml
system/etc/permissions/privapp-permissions-com.microsoft.skydrive.xml
system/etc/permissions/privapp-permissions-com.samsung.android.app.updatecenter.xml
system/etc/permissions/privapp-permissions-com.samsung.android.authfw.xml
system/etc/permissions/privapp-permissions-com.samsung.android.carkey.xml
system/etc/permissions/privapp-permissions-com.samsung.android.dkey.xml
system/etc/permissions/privapp-permissions-com.samsung.android.ipsgeofence.xml
system/etc/permissions/privapp-permissions-com.samsung.android.samsungpass.xml
system/etc/permissions/privapp-permissions-com.samsung.android.samsungpositioning.xml
system/etc/permissions/privapp-permissions-com.samsung.android.spayfw.xml
system/etc/permissions/privapp-permissions-com.samsung.oda.service.xml
system/etc/permissions/privapp-permissions-com.sec.android.diagmonagent.xml
system/etc/permissions/privapp-permissions-com.sec.android.soagent.xml
system/etc/permissions/privapp-permissions-com.sec.bcservice.xml
system/etc/permissions/privapp-permissions-com.sec.imslogger.xml
system/etc/permissions/privapp-permissions-com.sec.spp.push.xml
system/etc/permissions/privapp-permissions-com.skms.android.agent.xml
system/etc/permissions/privapp-permissions-com.wssyncmldm.xml
system/etc/permissions/privapp-permissions-meta.xml
system/etc/PF_TA
system/etc/sysconfig/digitalkey.xml
system/etc/sysconfig/meta-hiddenapi-package-allowlist.xml
system/etc/sysconfig/preinstalled-packages-com.samsung.android.dkey.xml
system/etc/sysconfig/preinstalled-packages-com.samsung.android.spayfw.xml
system/etc/sysconfig/samsungauthframework.xml
system/etc/sysconfig/samsungpassapp.xml
system/etc/sysconfig/samsungpushservice.xml
system/hidden/SmartTutor
system/preload/Facebook_stub_preload
system/priv-app/AppUpdateCenter
system/priv-app/AREmoji
system/priv-app/AREmojiEditor
system/priv-app/AuthFramework
system/priv-app/BCService
system/priv-app/CpAgent
system/priv-app/DiagMonAgent94
system/priv-app/DigitalKey
system/priv-app/EnhancedAttestationAgent
system/priv-app/FBInstaller_NS
system/priv-app/FBServices
system/priv-app/FotaAgent
system/priv-app/ImsLogger
system/priv-app/IpsGeofence
system/priv-app/OdaService
system/priv-app/OMCAgent5
system/priv-app/OneDrive_Samsung_v3
system/priv-app/PaymentFramework
system/priv-app/SamsungCarKeyFw
system/priv-app/SamsungPass
system/priv-app/SamsungPositioning
system/priv-app/SKMSAgent
system/priv-app/SOAgent75
system/priv-app/SPPPushClient
system/priv-app/StickerFaceARAvatar
system/priv-app/YourPhone_P1_5
system/priv-app/AREmoji
system/priv-app/AREmojiEditor
system/priv-app/AppUpdateCenter
system/priv-app/AutoDoodle
system/priv-app/AvatarEmojiSticker
system/priv-app/BeaconManager
system/priv-app/DynamicLockscreen
system/priv-app/FBInstaller_NS
system/priv-app/FBServices
system/priv-app/Fmm
system/priv-app/FotaAgent
system/priv-app/GalaxyApps_OPEN
system/priv-app/GalleryWidget
system/priv-app/GameOptimizingServices
system/priv-app/GameTools_Dream
system/priv-app/LinkToWindowsService
system/priv-app/StoryService
system/priv-app/StickerFaceARAvatar
system/priv-app/SmartSwitchAssistant
system/app/SmartManager_v6_DeviceSecurity
system/priv-app/SamsungSmartSuggestions
system/priv-app/SamsungPass
system/priv-app/SamsungMagnifier3
system/priv-app/SamsungIntelliVoiceServices
system/priv-app/SamsungExperienceService
system/priv-app/SamsungCarKeyFw
system/priv-app/SamsungBilling
system/priv-app/RubinVersion36
system/priv-app/PaymentFramework
system/priv-app/OfflineLanguageModel_stub
system/priv-app/DigitalWellbeing
system/priv-app/DynamicSystemInstallationService
system/priv-app/EnhancedAttestationAgent
system/priv-app/KLMSAgent
system/priv-app/KPECore
system/priv-app/KnoxCore
system/priv-app/MultiControl
system/priv-app/OMCAgent5
system/priv-app/PetService
system/priv-app/SmartThingsKit
system/app/ARCore
system/app/ARDrawing
system/app/AASAservice
system/app/BasicDreams
system/app/BixbyWakeup
system/app/BlockchainBasicKit
system/app/CompanionDeviceManager
system/app/EasterEgg
system/app/Fast
system/app/Foundation
system/app/GalaxyResourceUpdater
system/app/GearManagerStub
system/app/HandwritingService
system/app/KidsHome_Installer
system/app/ParentalCare
system/app/SamsungTTS
system/app/SmartSwitchAgent
system/app/SmartSwitchStub
system/app/StickerCenter
system/app/Traceur
system/app/MinusOnePage
system/preload/Tips
system/app/MyDevice
system/app/LiveTranscribe
system/app/SamsungTTSVoice_en_US_I03
system/app/SmartReminder
system/app/VisionIntelligence3.7
system/app/VoiceAccess
system/app/BBCAgent
system/priv-app/DeXonPC
system/priv-app/GameHome
system/priv-app/GameOptimizingService
system/priv-app/NSFusedLocation_v6.0
system/priv-app/YourPhone_Stub
system/priv-app/AvatarPicker
system/priv-app/BadgeProvider_N
system/priv-app/DeviceBasedServiceConsent
system/priv-app/DevGPUDriver-EX2200
system/priv-app/DeviceDiagnostics
system/priv-app/EasySetup
system/priv-app/HashTagService
system/priv-app/KmxService
system/priv-app/SamsungMultiConnectivity
system/priv-app/SecAppSeperation
system/priv-app/LedCoverService
system/priv-app/GPUWatchApp
system/priv-app/Tag
system/priv-app/TalkbackSE
system/priv-app/SamsungCoreServices
system/priv-app/SamsungCoreServices-Stub
system/priv-app/UserDictionaryProvider
system/product/priv-app/CarrierWifi
system/product/app/GoogleLocationHistory
system/system_ext/priv-app/GoogleFeedback
system/app/PhotoTable
"

PRISM_DEBLOAT+="
app
etc
HWRDB
preload
priv-app
sipdb
"

OPTICS_DEBLOAT+="
configs
"

# eSIM
if $SOURCE_IS_ESIM_SUPPORTED; then
    if ! $TARGET_IS_ESIM_SUPPORTED; then
        SYSTEM_DEBLOAT+="
        system/etc/permissions/privapp-permissions-com.samsung.android.app.esimkeystring.xml
        system/etc/permissions/privapp-permissions-com.samsung.euicc.mep.xml
        system/etc/sysconfig/preinstalled-packages-com.samsung.android.app.esimkeystring.xml
        system/etc/sysconfig/preinstalled-packages-com.samsung.euicc.xml
        system/priv-app/EsimKeyString
        system/priv-app/EsimClient
        system/priv-app/EuiccService
        "
    fi
fi
