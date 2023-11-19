#!/bin/bash

# 获取当前日期和时间
currentDate=$(date "+%Y/%m/%d")

# 删除日期中的可能存在的空格
currentDate=$(echo "$currentDate" | tr -d ' ')

# 在时间后面添加其他内容
title="$title"
content="$content"

if [ -z "$content" ]; then
    commit_message="Commit on $currentDate - $title
    rhythm is just a *click* away!"
else
    commit_message="Commit on $currentDate - $title
    $content"
fi

# 用ssh连接github
ssh -T git@github.com

# 添加所有更改到暂存区
git add .

# 提交更改，并添加提交消息
git commit -m "$commit_message"

# 推送到远程仓库（如果需要的话）
git push origin master:master
