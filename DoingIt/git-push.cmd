@echo off

@REM 获取当前日期和时间
@REM set "current_time=%TIME%"
set "currentDate=%DATE%"

@REM 删除日期中的可能存在的空格
set "currentDate=%currentDate: =%"
set "currentDate=%currentDate:~0,10%"

@REM 格式化时间，以删除不需要的字符
@REM set "current_time=%current_time::=%"
@REM set "current_time=%current_time:.=%"

@REM 在时间后面添加其他内容
set "title=%1"
set "commit_message=Commit on %currentDate% - %title%^
rhythm is just a *click* away!"

@REM 用ssh连接github
ssh -T git@github.com

@REM 添加所有更改到暂存区
git add .

@REM 提交更改，并添加提交消息
git commit -m "%commit_message%"

@REM 推送到远程仓库（如果需要的话）
git push origin master:master
