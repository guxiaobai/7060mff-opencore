# 7060mff-opencore

## @TODO

* Sonoma 休眠之后耳机声音不正常
* 调节声音平衡可以使得声音正常


## `modGRUBShell.efi`

* 修改 `DVMT Pre-Allocated` 为 `64M`: `setup_var 0x8DC 0x2` (显存容量)
* 禁用 `CFG lock`: `setup_var 0x5BE 0x0`(电源管理相关)


## Tools

* <https://github.com/benbaker76/Hackintool>
* <https://github.com/ic005k/OCAuxiliaryTools>
* <https://github.com/corpnewt/ProperTree>
* <https://github.com/corpnewt/GenSMBIOS>


## Sonoma

* <https://dortania.github.io/OpenCore-Legacy-Patcher/>
* <https://github.com/HorizonUnix/PatchSonomaWiFiOnTheFly>
* <* <https://mrasong.com/articles/hackintosh-sonoma-14.4-install-loop/>>

## [OpenCore Legacy Patcher](https://dortania.github.io/OpenCore-Legacy-Patcher/)

* [在macOS安裝過程中自動使用OpenCore Legacy Patcher打好博通Wifi驅動補丁SonomaWiFiOnTheFly (PSWFOTF） – 我和我的黑蘋果](https://imacpc.net/?p=669)
* [Sonoma 常遇到的問題（保持更新） – 我和我的黑蘋果](https://imacpc.net/?p=85)
* [macOS Sequoia常遇到的問題 – 我和我的黑蘋果](https://imacpc.net/?p=743)
* [macOS 14 Sonoma 博通网卡驱动支持 - Geek](https://www.igeekbb.com/2023/09/27/Hackintoswifi/)
* [Sonoma满⾎复活博通卡（蓝⽛+WiFi） - SDCOM‘s blog](https://sdcom.chgskj.cn/193.html)
* [总结归纳 Hackintosh 的一些问题 - 淮城一只猫](https://iiong.com/summarize-some-problems-of-hackintosh/)
* [「黑苹果」免驱网卡，找回macOS Sonoma消失的WiFi - YouTube](https://www.youtube.com/watch?v=tJUyRWGgRuU)
* [FEVM FN60G黑苹果兼Sequoia安装教程 | 黑果小兵的部落阁](https://blog.daliansky.net/FEVM-FN60G-Hackintosh-and-Sequoia-Installation-Tutorial.html)
* [BCM94360CS2 黑苹果 macOS Sonoma Wifi 不能开启修复 - hangox - 博客园](https://www.cnblogs.com/Jabba93/p/18254592/bcm94360cs2-hei-ping-guo-macos-sonoma-wifi-bu-neng)
* [Disabling SIP](https://dortania.github.io/OpenCore-Install-Guide/troubleshooting/extended/post-issues.html#disabling-sip)



## 应用软件

> 在操作系统内安装

组件|本期|上期|备注
---|---|:---:|---
[`HeliPort.dmg`](https://github.com/OpenIntelWireless/HeliPort/releases/download/v1.4.1/HeliPort.dmg)| `1.4.1` | `1.4.0`| Intel Wifi 联网

## 硬件

* 芯片组: [Intel® Q370 Chipset](https://ark.intel.com/content/www/cn/zh/ark/products/133282/intel-q370-chipset.html)
* 处理器: [英特尔® 酷睿™ i5-8600T 处理器](https://ark.intel.com/content/www/cn/zh/ark/products/129938/intel-core-i5-8600t-processor-9m-cache-up-to-3-70-ghz.html)
* 网络适配器: [英特尔® 以太网连接 I219-LM](https://ark.intel.com/content/www/cn/zh/ark/products/82185/intel-ethernet-connection-i219-lm.html)
* 无线: [英特尔® Wireless-AC 9560](https://ark.intel.com/content/www/cn/zh/ark/products/99446/intel-wireless-ac-9560.html)
* 音频: `Realtek ALC255`(系统显示)  / `Realtek ALC3234`(说明文档)
* 视频: `英特尔 UHD 显卡 630`
* 硬盘: [`WD BLUE SN550 NVME SSD`](https://support-cn.wd.com/app/products/product-detail/p/1555) ([本地版本](./src/02-01-WW-04-00050.pdf))
* 内存: `三星 DDR4 2666MHz 8GB` x 2 / [`M471A1K43DB1-CTD`](https://www.samsung.com/semiconductor/cn/dram/module/M471A1K43DB1-CTD/)
* 显示器: [Dell U2419HS](https://www.dell.com/support/home/zh-cn/product-support/product/dell-u2419hs-monitor/overview) x 2
* 键盘:  [FILCO Majestouch Minila Air](https://www.diatec.co.jp/en/det.php?prod_c=1470) / [小米无线键鼠套装](https://www.mi.com/buy/detail?product_id=11418)


## Ref

* <https://dortania.github.io/OpenCore-Install-Guide/> - `0.9.1`
* [更新完opencore0.8.8后多了一个EFI怎么删除](https://blog.51cto.com/u_15875231/5988662)
* [黑果小兵的部落阁](https://blog.daliansky.net/)
* [主页 - 国光的黑苹果安装教程：手把手教你配置 OpenCore](https://apple.sqlsec.com/)
* [适用于OptiPlex 7060 Micro的支持 | 概览 | Dell 中国](https://www.dell.com/support/home/zh-cn/product-support/product/optiplex-7060-micro/overview)