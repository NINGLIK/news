@echo off

REM 获取当前日期和时间
set "current_date=%DATE%"
set "current_time=%TIME%"

REM 删除日期中的可能存在的空格
set "current_date=%current_date: =%"

REM 格式化时间，以删除不需要的字符
set "current_time=%current_time::=%"
set "current_time=%current_time:.=%"

REM 在时间后面添加其他内容
set "custom_text=My Custom Text"
set "commit_message=Commit on %current_date% at %current_time% - %custom_text%"

REM 用ssh连接github
ssh -T git@github.com

REM 添加所有更改到暂存区
git add .

REM 提交更改，并添加提交消息
git commit -m "%commit_message%"

REM 推送到远程仓库（如果需要的话）
git push origin master:master
