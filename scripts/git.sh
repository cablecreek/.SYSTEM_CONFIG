echo $TEST_MSG

touch $USER_DIR/gitconfig

git config --global init.defaultBranch main

git config --file $USER_DIR/gitconfig user.email "$EMAIL"
git config --file $USER_DIR/gitconfig user.name "$FULL_NAME"
