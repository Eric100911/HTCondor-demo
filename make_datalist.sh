#!/bin/bash
# make_datalist.sh - 生成数据集清单文件

# 定义输入文件匹配模式
input_files_regex=".*triOniaVtxValid.*2022.*[0-9]+\.root"

# 查找输入文件并生成清单
find /eos/home-c/chiw/JpsiJpsiUps/rootNtuple/ParkingDoubleMuonLowMass[0-7] \
     -type f -regex "$input_files_regex" > dataset.list

echo "Generated dataset list with $(wc -l < dataset.list) entries"