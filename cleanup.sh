sudo ovs-vsctl -- --all destroy QoS -- --all destroy Queue
sudo mn -c
curl 192.168.56.1:8080/wm/staticflowentrypusher/clear/all/json
