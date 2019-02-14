# A couple of utilities to help with remote work.
1. A git setup script that allows us to use git to sync files between the local and remote versions

2. A scrip that hosts jupyter notebooks on a remote machine, but forwards the output back to us, so we can work locally on remote hosted notebooks.


## projSetup

This script configures a post-receive hook that resets to the current version. Use it remotely to allow a simple push to sync files between machines.


#### To set up projects on the server:
ssh in and run `projSetup $NAME`


This sets up the git repositories for the project that can be push to and will update to the newly pushed version. BE CAREFUL ABOUT LEAVING UNCOMMITTED CHANGES ON THE CLUSTER.

#### To sync:
Commit and run git `push cluster master`



## getNotebook

Runs jupyter notebooks in interactive sessions on the cluster. Port-forwards them back to be opened in the local browser. This version works on O2 and orchestra.

#### To setup:
1. Put getNotebook.sh on your local machine and getNbSession.sh and startSession.sh on the remote machine. (all executable)
2. Change the username in the getNotebook and startSession files

#### To run:
1. Sync local files to the remote machine.
2. run `getNotebook $PORT`. The port number is optional and the default is 50021. However, it might get clogged by an old notebook. I'm not sure how to clear that up, but you can just run on a new port.

3. Point browser to 127.0.0.1:$PORT
4. When you're done, be sure to sync the remote changes back to your local copy. This is __especially dangerous__ when using projSetup.











