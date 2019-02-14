# this runs on the interactive session that slurm gives us
screen -d -m jupyter notebook --port=$1 --browser='none'
echo $1:127.0.0.1:$1

# port forward back to the login machine. Also holds the connection open
ssh -N -v -R $1:127.0.0.1:$1 myUser@$2


