# X280-OpenCore-Hackintosh

<img align="right" src="./Other/README_Resources/ThinkPad.gif" alt="T480 macOS" width="430">

[![OpenCore](https://img.shields.io/badge/OpenCore-0.7.5-blue.svg)](https://github.com/acidanthera/OpenCorePkg)[![macOS](https://img.shields.io/badge/macOS-11.6-brightgreen.svg)](https://www.apple.com/macos/big-sur)

**DISCLAIMER:**
Read the entire README and Dortania guides before you start. I am not responsible for any damage.
When you encounter bug or want to improve this repo, consider opening issue or pull request. But I'm not so powerful to solve them all.
If you find this bootloader configuration useful, consider giving it a star to make it more visible.

## Introduction
<details>

<summary><strong>Hardware</strong></summary>
<br>

[![UEFI](https://img.shields.io/badge/UEFI-N20ET58W(1.43)-lightgrey)]

| Category  | Component                                                          | Note |
| :------------ | :--------------------------------------------------------------- | :---- |
| CPU         | Intel Core i5-8250U                                              | |
| GPU         | Intel UHD 620                                                       | |
| SSD          | SAMSUNG MZNLN256HAJQ-000L7 256GB      | |
| Memory  | 4GB * 2 DDR4 2400Mhz                                      | |
| Wifi & BT | Intel Wireless-AC 8265                                        | replaced by DW1820A with some pins masked |
| Input  | PS2 Keyboard & Synaptics TrackPad | [VoodooPS2Controller](https://github.com/acidanthera/VoodooPS2) and some handmade key remapping |

</details>  

<details>

<summary><strong>Main software</strong></summary>
<br>

| Component      | Version        |
| -------------- | -------------- |
| macOS Big Sur  | 11.6 (20G165)  |
| OpenCore       | v0.7.5         |

</details>

<details>

<summary><strong>Kernel extensions</strong></summary>
<br>

| Kext                  | Version         |
| :-------------------- | --------------- |
| AppleALC              | 1.6.5           |
| BrcmPatchRam          | 2.6.0           |
| BrcmBluetoothInjector | 2.6.0           |
| BrcmFirmwareData      | 2.6.0           |
| BrcmPatchRAM3         | 2.6.0           |
| BrightnessKeys        | 1.0.2           |
| CPUFriend             | 1.2.4           |
| CPUFriendDataProvider | i5-8250U        |
| HibernationFixup      | 1.4.4           |
| HoRNDIS               | 9.2             |
| IntelMausi            | 1.0.7           |
| Lilu                  | 1.5.6           |
| NoTouchID             | 1.0.4           |
| NVMeFix               | 1.0.9           |
| RTCMemoryFixup        | 1.0.8           |
| SMCBatteryManager     | 1.2.7           |
| SMCProcessor          | 1.2.7           |
| SMCSuperIO            | 1.2.7           |
| USBInjectAll          | Disabled, 0.7.6 |
| USBPorts              | Handmade        |
| VirtualSMC            | 1.2.7           |
| VoltageShift          | Disabled, 1.21  |
| VoodooPS2Controller   | 2.2.6           |
| VoodooRMI             | 1.3.4           |
| VoodooSMBus           | 3.0.0           |
| WhateverGreen         | 1.5.4           |

</details>
<details>
<summary><strong>UEFI drivers</strong></summary>
<br>

| Driver              |
| :------------------ |
| AudioDxe.efi        |
| CrScreenshotDxe.efi |
| HfsPlus.efi         |
| OpenCanopy.efi      |
| OpenRuntime.efi     |

</details>

## Status

<details>  

<summary><strong>What's working ✅</strong></summary>

- [x] Battery percentage

- [x] Bluetooth `DW1820A`

- [x] Boot chime

- [x] Boot menu `OpenCanopy` 

- [x] CPU power management / performance

- [x] FireVault 2 `Should be good, not tested` 

- [x] GPU UHD 620 hardware acceleration / performance 

- [x] HDMI `Closed and opened lid. With audio.`

- [x] iMessage, FaceTime, App Store, iTunes Store. **Generate your own SMBIOS**

- [x] Intel I219V Ethernet port `Should be good, not tested` 

- [x] Keyboard `Volume and brightness hotkeys. Another media keys not used`

- [x] Microphone `Fn+F4 not work`

- [x] Realtek® ALC3287 ("ALC257") Audio

- [x] Sidecar wired `Should be good, not tested` 

- [x] Sleep/Wake 

- [x] TouchPad

- [x] TrackPoint

- [x] USB Ports `Works after configured`

- [x] Web camera

- [x] Wifi `DW1820A`

</details>  

## CREDITS

- [EETagent](https://github.com/EETagent) For orginal T480 OpenCore repo

- The guys from [Acidanthera](https://github.com/acidanthera) that make this possible
  
- [Sukka](https://github.com/SukkaW) From his [blog](https://blog.skk.moe/post/ssdt-map-fn-shortcuts/) I learned how to remap function keys
