#用ssh连接github
ssh -T git@github.com
# 添加所有更改到暂存区
git add .
# 提交更改，并添加提交消息
git commit -m "$1"
# 推送到远程仓库（如果需要的话）
git push origin master:master
