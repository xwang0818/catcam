PID_LIST=$(ps aux | grep mypassword | grep -v grep | awk '{print $2}')

for PID in $PID_LIST;
do
   echo Killing process $PID
   kill -9 $PID
done

