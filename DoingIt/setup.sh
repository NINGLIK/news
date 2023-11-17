echo "Setup project Setting ..."
#git commit log template
cp ci/.gitmessage.txt ~/.gitmessage.txt
git config --global commit.template ~/.gitmessage.txt
git config --global --add commit.cleanup strip
echo "> set up commit msg template success."
#git commit log format hook
cd ./.git
mkdir hooks
cp ../ci/commit-msg.sample ./hooks/
cd ./hooks
mv commit-msg.sample commit-msg
chmod +x commit-msg
echo "> set up commit-msg of hooks success."