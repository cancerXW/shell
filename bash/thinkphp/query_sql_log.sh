#!/bin/bash
#这是查看thinphp日志脚本
#使用方式：command [选项]
#参数1: 查看的时间 例如 查看2017年9月25日的日志 格式为170925
#参数2: 排查的内容 建议加上引号
cat *${1:0:2}_${1:2:2}_${1:4:2}.log | grep -i "$2"