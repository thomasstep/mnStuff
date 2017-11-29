from mininet.topo import Topo
from mininet.net import Mininet
from mininet.util import dumpNodeConnections
from mininet.log import setLogLevel
from mininet.node import CPULimitedHost
from mininet.link import TCLink
from mininet.node import Controller
from mininet.node import RemoteController
from mininet.node import OVSSwitch
from mininet.cli import CLI

class SingleSwitchTopo(Topo):
	"Single switch connected to n hosts"
	def build(self, n=2):
		switch = self.addSwitch('s1',protocols='OpenFlow13')
		for h in range(n):
			#Each host consumes 25% of the CPU
			host = self.addHost('h%s' % (h+1), cpu=.25/n)
			#Each link has max 10Mbit/s Bandwidth, has 5ms (can also be us or s) delay, loses 1% of packets, and has a 1000 packet queue size
			self.addLink(host, switch, port1=(h+1), bw=10, 
			delay='5ms', loss=1, max_queue_size=1000, use_htb=True)

def simpleTest():
	"Create and test a simple network"
	topo = SingleSwitchTopo(n=4)
	net = Mininet(topo, host=CPULimitedHost, link=TCLink, controller=None)
	net.addController('c0', controller=RemoteController, ip='192.168.56.1', port=6653)
	net.start()
	print "Dumping host connections"
	dumpNodeConnections(net.hosts)
	print "Testing network connectivity"
	s1 = net.get( 's1' )
	s1.cmd('./eth1Queue.sh')
	net.pingAll()
	print "Testing speed between h1 and h4"
	h1, h4 = net.get('h1', 'h4')
	net.iperf( (h1,h4) )
	CLI(net)
	net.stop()

if __name__ == '__main__':
	setLogLevel('info')
	simpleTest()
