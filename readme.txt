To run:
1) run getNotebook $PORT

The port number is optional and the default is 50021. However, it might get clogged by an old notebook. I'm not sure how to clear that up, but you can just run on a new port.

2) Point browser to 127.0.0.1:$PORT




To set up projects on the server:
Just ssh in and run:
projSetup $NAME

This sets up the git repositories for the project that can be push to and will update to the newly pushed version. BE CAREFUL ABOUT LEAVING UNCOMMITTED CHANGES ON THE CLUSTER.




-----------------------------------------------------------

This is a test project for setting up the server properly

Heres how the workflow should go.
1) do local work
2) git push to the cluster 
    local $ git push cluster master

3) On the cluster, pull from the origin.
    remote $ git pull origin master

4) run the script to get a notebook window
5) work in the notebook



# The below is outdated. Han and I set up a post-receive hook that allows pushing to a repository that is not bare.

-----------------------------------------------------------------------------------------------------



# This requires two git repositories because git doesn't like pushing to non-bare repos. Even if you do, it doesn't update the files in the currently checked-out branch.

Setting things up: ( this is a bit stupid, but it works....)

1) Make the cluster remote:
    remote $ source proSetup MYPROJ

2) setup local remote:
    local $ git remote add cluster ssh://LR93@orchestra.med.harvard.edu/home/lr93/projects/sourceRepos/MYPROJ.git

3) push to the cluster
    local $ git push cluster mastercdet

4) on the cluster, pull from the bare repo:
    remote $ git pull origin master

5) on the cluster, setup the virutalenv
    $ virtualenv ven
    $ pip install -r requirements.txt





