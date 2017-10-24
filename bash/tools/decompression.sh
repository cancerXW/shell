#!/bin/bash
# one key decompression , support type tar tar.bz2 tar.gz zip 
# 一键解压，无须判断类型 现在支持类型有 tar tar.bz2 tar.gz zip
for i in $@
do
  case `file -b "$i"| cut -d , -f1` in
  "POSIX tar archive (GNU)")
    tar xvf $i
  ;;
  "bzip2 compressed data")
    tar jxvf $i
  ;;
  "gzip compressed data")
    tar zxvf $i
  ;;
  "Zip archive data")
    unzip $i
  ;;
  *)
    echo "Do not support type" >&2
  esac
done

