<p align="center"><img src="resources/logo.png" alt="MarkText" width="120" height="120"></p>

<h1 align="center">TrackPoint78 </h1>

<h5 align="center">TP78是基于CH582M的小红点三模机械键盘方案</h5>

**V2.0版本特性：**

1. 支持三模态连接切换

2. 支持USB U盘改键和配置、支持QMK VIA改键

3. 支持带震动反馈的触摸条操作、支持小红点替换触摸板操作

4. 硬件集成USB hub接口、集成磁吸扩展口

5. 支持I2C协议小红点模块和PS/2协议小红点模块方案

6. 专属OLED UI库，深度优化OELD UI

7. 支持Fn多种模式设置

8. 支持待机进入低功耗模式

**V1.0仓库地址(以供参考)：** https://github.com/ChnMasterOG/tp78

**TP78键盘视频介绍：** https://www.bilibili.com/video/BV1Ho4y1b78t

**硬件资料开源地址：** https://oshwhub.com/bibilala/tp78_2022-08-31

#### 仓库目录

```mermaid
flowchart LR

A(repository) --> B(documents - 手册和文档)
A(repository) --> C(mounriver_project - wch软件工程)
A(repository) --> D(firmware - 相关固件)
A(repository) --> F(tools - 相关辅助工具)
C(mounriver_project - wch软件工程) --> G(KEYBOARD_CH582M - 三模无线键盘工程)
C(mounriver_project - wch软件工程) --> H(RF_CH582M - 配套接收器工程)
C(mounriver_project - wch软件工程) --> J(VLD_CH582M - 主控板测试工程)
```

#### 视频教程

**改键篇(上)-VIA：** https://www.bilibili.com/video/BV1rL41167qy

**改键篇(下)-按键宏：** https://www.bilibili.com/video/BV1Yu4y1S73Q

#### 关于固件升级Q&A

- **Q**: 如何进入主键盘WCH的ROM bootloader（非开发者不建议操作）？

- **A:** 按住底板中BOOT键通电。

- **Q**: 如何进入主键盘kBoot？

- **A:** kBoot是TP78_v2固件配套bootloader，按下Fn+B可实现由主固件跳转至kBoot，或通过按ESC上电跳转kBoot。kBoot下格式化U盘操作相当于擦除主固件，擦除后将主固件复制到U盘选择Reboot进行固件升级。

- **Q**: 如何进入接收器的bootloader？

- **A:** 进入RF模式后连上接收器，此时按下Fn+M使接收器进入ROM bootloader。注意：接收器进入bootloader后CodeFlash首4K被擦除，上电后必须先下载程序。若同时需要升级接收器固件和键盘主体固件，优先升级接收器固件后再升级键盘主体固件。千万注意接收器固件不要刷错，否则导致无法连接从而无法再次进入bootloader。

- **Q:** 如何通过WCH工具升级固件？

- **A:** 使用WCH官方ISP工具进行固件升级(仅支持windows)，工具目录：tools/WCHISPTool/WCHISPTool_Setup.exe。
  
  > - 双击软件安装工具和相关驱动；
  > 
  > - MCU系列选择：“32位低功耗蓝牙系列”，芯片选择：CH58x，芯片型号：CH582；
  > 
  > - 在USB设备列表里找到自己的设备，若找不到尝试重新进入BOOT；
  > 
  > - 根据需求勾选相关下载配置，若不确定可进行咨询，一般使用默认配置即可；
  > 
  > - 选择目标程序文件1，并勾选右侧选项框；
  > 
  > - 最后点击下载。

- **Q**: 首次刷入固件提示FATFS-FAIL（解决方式1）。

- **A:** 第一次下载需要刷入出产固件（或者通过打开HAL.h中的FIRST_USED宏编译出产固件）。刷入后弹出U盘选择格式化。格式化后断电重启。重启再刷入正式版固件。刷入后确保正式版固件的配置信息是最新的，需要按5次Fn重置配置。重置后重启键盘就能正常使用。

- **Q**: 首次刷入固件提示FATFS-FAIL（解决方式2 - 推荐）。

- **A:** 首次刷入固件时，勾选DataFlash文件，选择firmware/DefaultFS.BIN，点击下载即可。刷入后确保固件的配置信息是最新的，需要按5次Fn重置配置。
