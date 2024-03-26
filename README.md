# [AG32VF407](https://github.com/SoCXin/AG32VF407)

[![Build Status](https://github.com/SoCXin/AG32VF407/workflows/build/badge.svg)](https://github.com/SoCXin/AG32VF407/actions/workflows/build.yml)

* [agm-micro](http://www.agm-micro.com/)：[FPGA + RISC-V(RV32IMAFC)](https://github.com/SoCXin/RISC-V)
* [L4R3](https://github.com/SoCXin/Level)：248->384MHz (630->976CoreMark), [￥13.9 (LQFP-100)](https://item.taobao.com/item.htm?id=673084361660&spm=a1z10.5-c-s.w4002-24461620535.13.1844525cXo4UWf)

## [简介](https://github.com/SoCXin/AG32VF407/wiki)

[AG32VF407](http://www.agm-micro.com/upload/userfiles/files/AG32%20MCU%20Reference%20Manual.pdf) 

### 关键特性

* 248 MHz RISC-V (RV32IMAFC)
* 128KB SRAM + 512KB/1MB Flash
* 3x12-bit 1Msps ADC (3Msps in triple interleaved mode)
* 2x10-bit 1Msps DAC
* AGRV2K CPLD


## [资源收录](https://github.com/SoCXin)

* [参考资源](src/)
* [参考文档](docs/)
* [参考工程](project/)
* [官方下载](http://www.tcx-micro.com/)

### 开发环境

* 1：MCU部分使用VScode搭建开发环境（我们提供所有安装包）；
* 2：CPLD/FPGA使用Quartus开发（兼容Altera，代码可以直接参考Quartus所编写的Verilog语言），开发好通过Supra工具综合转换。

### 下载调试

* 使用jlink V9及以上版本，通过zadig-2.8更换驱动；
* AGM BLASTER 、CMSIS-DAP下载；

## [选型建议](https://github.com/SoCXin)

[AG32VF407](https://github.com/SoCXin/AG32VF407) 是该系列最高配置型号，其下还包括AG32VF303、AG32VF207、AG32VF103等型号，直接PIN TO PIN兼容友商STM32Fxxx。

* 型号间主要差异在MCU主频和存储配置上，外设差异在SDIO,Ethernet MAC;
* 全系都配置[AGRV2K CPLD](http://www.tcx-micro.com/doc_26934765_5589867_0_1.html)

