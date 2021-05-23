sleep 30 #wait for interfaces up
HOST=`hostname`
git pull --no-edit
cd /home/isaac/projects/mymachines
echo "`ip addr | grep inet`" > $HOST.txt
echo "`date`" >> $HOME/report.log
git add .
git commit -m 'change ip for '"$HOST"
git push -f
