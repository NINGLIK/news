@echo off

REM 获取当前日期
set "current_date=%date%"

REM 删除日期中的可能存在的空格
@REM set "current_date=%current_date: =%"

REM 截取日期的前10个字符，即年-月-日
set "formatted_date=%current_date:~0,10%"

REM 输出格式化后的日期
echo Formatted date: %formatted_date%

REM 暂停，以便在脚本执行完后保持控制台窗口打开
pause

