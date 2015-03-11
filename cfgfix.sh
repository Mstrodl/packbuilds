git config --global user.email "$E"
git config --global user.name "$U"
echo '[core]' > .git/config
echo '  repositoryformatversion = 0' >> .git/config
echo '  filemode = true' >> .git/config
echo '	bare = false' >> .git/config
echo '	logallrefupdates = true' >> .git/config
echo '	ignorecase = true' >> .git/config
echo '	precomposeunicode = true' >> .git/config
echo '[remote "origin"]' >> .git/config
echo '	url = https://$U:$P@github.com/Mstrodl/packbuilds.git' >> .git/config
echo '	fetch = +refs/heads/*:refs/remotes/origin/*' >> .git/config
echo '[branch "master"]' >> .git/config
echo '	remote = origin' >> .git/config
git commit -m "$TRAVIS_TEST_RESULT" client.zip
