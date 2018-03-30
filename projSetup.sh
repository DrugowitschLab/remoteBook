# This script makes directories and initializes the git repos for running a project on the cluster
# the name of the project is given by the first argument

git init $1
cd $1
git config receive.denyCurrentBranch ignore

echo 'cd .. && env -i git reset --hard' > .git/hooks/post-receive
chmod +x .git/hooks/post-receive


