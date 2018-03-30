# requests the notebook session. 

# this runs on the login machine, and gets access to an interactive session
export DISPLAY=:0.0
loginAdr=$( hostname )
myHost=$( srun -t 0-4:00 --pty -p interactive --x11 bash -l startSession.sh $1 $loginAdr)


