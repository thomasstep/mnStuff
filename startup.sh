# The first command is for floodlight-qos-beta
#sudo mn --mac --controller=remote,ip=192.168.56.1,port=6633
sudo mn --topo=linear,8 --mac --controller=remote,ip=192.168.56.1,port=6633

# This command is for floodlight master
#sudo mn --mac --switch=ovsk,protocols=OpenFlow13 --controller=remote,ip=192.168.56.1,port=6653
