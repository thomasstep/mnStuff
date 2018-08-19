sudo ovs-vsctl -- set port s1-eth1 qos=@newqos -- --id=@newqos create qos type=linux-htb queues:0=@q0 -- --id=@q0 create queue other-config:min-rate=1000000 other-config:max-rate=2000000
sudo ovs-vsctl -- set port s2-eth1 qos=@newqos -- --id=@newqos create qos type=linux-htb queues:0=@q0 -- --id=@q0 create queue other-config:min-rate=1073741824 other-config:max-rate=1073741824
sudo ovs-vsctl -- set port s3-eth1 qos=@newqos -- --id=@newqos create qos type=linux-htb queues:0=@q0 -- --id=@q0 create queue other-config:min-rate=1073741824 other-config:max-rate=1073741824
sudo ovs-vsctl -- set port s4-eth1 qos=@newqos -- --id=@newqos create qos type=linux-htb queues:0=@q0 -- --id=@q0 create queue other-config:min-rate=1073741824 other-config:max-rate=1073741824
sudo ovs-vsctl -- set port s5-eth2 qos=@newqos -- --id=@newqos create qos type=linux-htb queues:0=@q0 -- --id=@q0 create queue other-config:min-rate=10000000 other-config:max-rate=20000000
sudo ovs-vsctl -- set port s5-eth3 qos=@newqos -- --id=@newqos create qos type=linux-htb queues:0=@q0 -- --id=@q0 create queue other-config:min-rate=10000000 other-config:max-rate=20000000
sudo ovs-vsctl -- set port s5-eth1 qos=@newqos -- --id=@newqos create qos type=linux-htb queues:0=@q0 -- --id=@q0 create queue other-config:min-rate=100000 other-config:max-rate=200000
sudo ovs-vsctl -- set port s6-eth1 qos=@newqos -- --id=@newqos create qos type=linux-htb queues:0=@q0 -- --id=@q0 create queue other-config:min-rate=1000000 other-config:max-rate=2000000
sudo ovs-vsctl -- set port s7-eth1 qos=@newqos -- --id=@newqos create qos type=linux-htb queues:0=@q0 -- --id=@q0 create queue other-config:min-rate=1000000 other-config:max-rate=2000000
sudo ovs-vsctl -- set port s8-eth1 qos=@newqos -- --id=@newqos create qos type=linux-htb queues:0=@q0 -- --id=@q0 create queue other-config:min-rate=100000 other-config:max-rate=200000

