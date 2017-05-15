@echo off 
color 0a 
title 关闭常见的危险端口
echo.
echo 使用时请注意右键使用管理员权限运行
echo.
echo 正在开启Windows防火墙
echo.
netsh advfirewall set currentprofile state on > nul
netsh advfirewall set publicprofile state on > nul
echo. 
echo 防火墙已经成功启动。
echo. 
echo. 
pause 
cls 
echo 正在关闭常见的危险端口，请稍候… 
echo. 
echo 正在关闭135,139,445端口… 
netsh advfirewall firewall add rule name="135_139_445" protocol=TCP dir=in localport=135,139,445 action=block
echo 正在关闭137,138端口… 
netsh advfirewall firewall add rule name="137_138" protocol=UDP dir=in localport=137,138 action=block
echo 常见的危险端口已经关闭。 
echo. 
echo.
echo 正在免疫病毒进程
regedit banlangen.reg 
echo. 
echo. 
echo Powered By BugLi：263273742@qq.com
echo. 
echo 按任意键退出。 
pause>nul 
