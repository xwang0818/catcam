nohup node ./stream-server.js mypassword &

sleep 3

nohup ffmpeg -s 640x480 -f video4linux2 -i /dev/video0 -f mpeg1video -b 1600k -r 60 -vf eq=brightness=0.4:contrast=1.3 -loglevel quiet http://192.168.1.20:8082/mypassword/640/480/ & 

#nohup ffmpeg -s 720x480 -f video4linux2 -i /dev/video0 -f mpeg1video -b 800k -r 30 -vf eq=brightness=0.4:contrast=1.3 -loglevel quiet http://192.168.1.20:8082/mypassword/720/480/ & 

