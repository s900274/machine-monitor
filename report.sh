##sleep 30 #wait for interfaces up
HOST=`hostname`
cd $1
git pull --no-edit
echo "`ip addr | grep inet`" > $HOST.txt
echo "`date`" >> $HOME/report.log
git add .
git commit -m 'change ip for '"$HOST"
git push -f
