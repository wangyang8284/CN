CN IP地址每月更新。

Ros更新脚本：

/tool fetch url=https://raw.githubusercontent.com/wangyang8284/CN/main/CNIP dst-path=CNIP.rsc

/ip firewall address-list remove [/ip firewall address-list find comment=China]

import file=CNIP.rsc
