# mnStuff

These scripts are to be used as follows:
`sh startup.sh`
`sh queue.sh`
`sh flow.sh`
`sh cleanup.sh`

These scripts start mininet (assumes you have mininet available from the command line on the machine this is being run on), create queues for certain ports on the newly created mininet switches (OVS), create flows in Floodlight (running remotely), and cleanup all of the switches, queues, and Floodlight flow entries whenever you are done testing or want a new configuration.

If anything goes wrong during `startup.sh`, I suggest running `cleanup.sh` then trying to start up again. The setup I used for these scripts was running mininet in a VM with the IP address 192.168.56.101 and running the floodlight-qos-beta repo (a fork from the original) locally with the virtual network IP 192.168.56.1. I also have a commented out line in `startup.sh` for using this with floodlight master (master at the time of testing, April 2018).

The current setup from the scripts is a linear topology with 8 switches in the mininet network. The scripts only make queues for 5 switches. This can obviously be tweaked as needed. I left it this way because that's how the last of my tests were run, but I had also tweaked the queues, ports for the queues, and switches with queues throughout testing. There is also only one flow created for the network, but more can be added using the same syntax as the created flow in `flow.sh`.
