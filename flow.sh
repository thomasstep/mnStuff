curl -d '{"switch":"00:00:00:00:00:00:00:01","name":"flow-mod1","cookie":"0","priority":"32768","ingress-port":"2","active":"true","actions":"enqueue=1:0"}' http://192.168.56.1:8080/wm/staticflowentrypusher/json

