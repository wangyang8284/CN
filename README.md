北京时间每天02:00更新CNIP，Router OS 脚本如下，可将IP地址导入路由器：

/tool fetch url=https://raw.githubusercontent.com/wangyang8284/CN/refs/heads/main/CNIP.rsc dst-path=CNIP.rsc

:delay 10s

/ip firewall address-list remove [/ip firewall address-list find comment=China]

:delay 10s

import file=CNIP.rsc


