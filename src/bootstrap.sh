mkdir -p ../EFI/BOOT
mkdir -p ../EFI/OC/{Drivers,Kexts,ACPI,Tools}

# @Drivers:
# ----------
wget https://github.com/acidanthera/OpenCorePkg/releases/download/1.0.1/OpenCore-1.0.1-RELEASE.zip
unzip OpenCore-1.0.1-RELEASE.zip
cp ./X64/EFI/BOOT/BOOTx64.efi ../EFI/BOOT/
cp ./X64/EFI/OC/OpenCore.efi ../EFI/OC/
cp ./X64/EFI/OC/Drivers/OpenRuntime.efi ../EFI/OC/Drivers/
cp ./X64/EFI/OC/Tools/CleanNvram.efi ../EFI/OC/Tools/
cp ./Docs/Sample.plist ../EFI/OC/config.plist
# ResetNvramEntry.efi

# ----------
wget https://raw.githubusercontent.com/acidanthera/OcBinaryData/master/Drivers/HfsPlus.efi
cp HfsPlus.efi ../EFI/OC/Drivers/

# @Kexts:
# ----------
wget https://github.com/acidanthera/Lilu/releases/download/1.6.8/Lilu-1.6.8-RELEASE.zip
unzip Lilu-1.6.8-RELEASE.zip
cp -r Lilu.kext ../EFI/OC/Kexts/

# ----------
wget https://github.com/acidanthera/VirtualSMC/releases/download/1.3.3/VirtualSMC-1.3.3-RELEASE.zip
unzip VirtualSMC-1.3.3-RELEASE.zip
cp -r ./Kexts/VirtualSMC.kext ../EFI/OC/Kexts/
cp -r ./Kexts/SMCProcessor.kext ../EFI/OC/Kexts/
cp -r ./Kexts/SMCSuperIO.kext ../EFI/OC/Kexts/

# ----------
wget https://github.com/acidanthera/WhateverGreen/releases/download/1.6.7/WhateverGreen-1.6.7-RELEASE.zip
unzip WhateverGreen-1.6.7-RELEASE.zip
cp -r WhateverGreen.kext  ../EFI/OC/Kexts/

# ----------
wget https://github.com/acidanthera/AppleALC/releases/download/1.9.1/AppleALC-1.9.1-RELEASE.zip
unzip AppleALC-1.9.1-RELEASE.zip
cp -r AppleALC.kext ../EFI/OC/Kexts/

# ----------
wget https://github.com/acidanthera/IntelMausi/releases/download/1.0.7/IntelMausi-1.0.7-RELEASE.zip
unzip IntelMausi-1.0.7-RELEASE.zip
cp -r IntelMausi.kext ../EFI/OC/Kexts/

# ----------
# Added constants for macOS 14 support
# @TODO macOS 15

wget https://github.com/acidanthera/NVMeFix/releases/download/1.1.1/NVMeFix-1.1.1-RELEASE.zip
unzip NVMeFix-1.1.1-RELEASE.zip
cp -r NVMeFix.kext ../EFI/OC/Kexts/

# @ACPI:
# ----------
cp ./ssdt-plug/SSDT-PLUG.aml ../EFI/OC/ACPI/
cp ./ssdt-ec/SSDT-EC.aml ../EFI/OC/ACPI/
cp ./ssdt-pmc/SSDT-PMC.aml ../EFI/OC/ACPI/
cp ./ssdt-hpet/SSDT-HPET.aml ../EFI/OC/ACPI/

# @Tools:
# ----------
wget https://github.com/datasone/grub-mod-setup_var/releases/download/1.4/modGRUBShell.efi
cp modGRUBShell.efi ../EFI/OC/Tools/


# ----------
# 需要手动下载，命令下载不成功
# https://community.macmeup.com/index.php?/files/file/23-amfipasskext/
# 23.0.0
wget https://github.com/dortania/OpenCore-Legacy-Patcher/raw/refs/heads/main/payloads/Kexts/Acidanthera/AMFIPass-v1.4.1-RELEASE.zip
unzip AMFIPass-v1.4.1-RELEASE.zip
cp -r AMFIPass.kext ../EFI/OC/Kexts/

wget https://github.com/dortania/OpenCore-Legacy-Patcher/raw/refs/heads/main/payloads/Kexts/Wifi/IOSkywalkFamily-v1.2.0.zip
unzip IOSkywalkFamily-v1.2.0.zip
cp -r IOSkywalkFamily.kext ../EFI/OC/Kexts/

wget https://github.com/dortania/OpenCore-Legacy-Patcher/raw/refs/heads/main/payloads/Kexts/Wifi/IO80211FamilyLegacy-v1.0.0.zip
unzip IO80211FamilyLegacy-v1.0.0.zip
cp -r IO80211FamilyLegacy.kext ../EFI/OC/Kexts/

# ----------
# 自动使用 OCLP
# https://imacpc.net/?p=669
# https://github.com/HorizonUnix/PatchSonomaWiFiOnTheFly?tab=readme-ov-file

wget https://github.com/dortania/OpenCore-Legacy-Patcher/raw/refs/heads/main/payloads/Kexts/Acidanthera/AutoPkgInstaller-v1.0.4-RELEASE.zip
unzip AutoPkgInstaller-v1.0.4-RELEASE.zip
cp -r AutoPkgInstaller.kext ../EFI/OC/Kexts/

wget https://github.com/dortania/OpenCore-Legacy-Patcher/releases/download/2.0.1/AutoPkg-Assets.pkg