
ovs-vsctl add-br br0
ovs-vsctl add-port br0 eth0
ovs-vsctl add-port br0 vif1.0 -- set interface vif1.0 ofport_request=5
ovs-vsctl add-port br0 vif2.0 -- set interface vif2.0 ofport_request=6
ovs-vsctl set port eth0 qos=@newqos -- --id=@newqos create qos type=linux-htb other-config:max-rate=10000 queues:123=@vif10queue queues:234=@vif20queue -- --id=@vif10queue create queue other-config:max-rate=2000 -- --id=@vif20queue create queue other-config:max-rate=2500
ovs-ofctl add-flow br0 in_port=5,actions=set_queue:123,normal
ovs-ofctl add-flow br0 in_port=6,actions=set_queue:234,normal
