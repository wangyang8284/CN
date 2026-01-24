#!/bin/sh
mkdir -p ./pbr
cd ./pbr

# 下载中国IP列表
wget --no-check-certificate -c -O CN.txt https://raw.githubusercontent.com/mayaxcn/china-ip-list/master/chnroute.txt

{
echo "# 中国IP地址列表"
echo "# 生成时间（北京时间）: $(TZ='Asia/Shanghai' date '+%Y-%m-%d %H:%M:%S %Z')"
echo "/ip firewall address-list"
# echo "remove [find list=IP2Location]"  # 先删除旧列表，避免重复

for net in $(cat CN.txt) ; do
  echo "add address=$net comment=\"China\" list=IP2Location "
done

} > ../CNIP.rsc

cd ..
rm -rf ./pbr

echo "文件已生成: CNIP.rsc"
echo "使用命令导入: /import CNIP.rsc"
