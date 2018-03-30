#ssh's into the Harvard's o2 cluster, executes a port forwarding script, and connects a notebook at that port

# default port is 50021. Test for user defined port
if [ -z $1 ]; then 
        PORT=50021
    else
        PORT=$1
fi


echo $PORT:127.0.0.1:$PORT

# this runs on the local machine to initiate the conection to the cluster
ssh -L $PORT:127.0.0.1:$PORT -Y lr93@o2.hms.harvard.edu "
# this is running on the cluster
bash -i -l getNbSession.sh $PORT
bash -l
"

