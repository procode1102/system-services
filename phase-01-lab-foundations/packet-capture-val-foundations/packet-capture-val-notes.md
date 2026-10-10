# PACKET CAPTURE + VALIDATION EVIDENCE FOUNDATIONS NOTES
## LESSON COVERS:
- network packets
- packet capture
- pcie evidence concepts
- safe evidence handling
- validation test thinking

## LAB ENVIRONMENTS

- HOST OS: macOs

- CAPTURE TOOL: tcpdump

- PRIMARY NETWORK INTERFACE: en0

- DATE: 

## KEY CONCEPTS
- what packets are
- what packet capture is
- what pcie validation evidence looks like
- whay raw evidence can be so sensitive
- how to write safe summaries
- how to define pas/fail criteria
- how this fits into a validation engineering portfolio

## validation engineering
- practice of proving whether a system behaves as expected
- validation engineer asks:
	- what should happen?
	- how do I know?
	- can I reproduce it?
	- can I automate the check?
	- can I explain it clearly?
## what is a packet capture?

A packet capture is a recording of network traffic from a network interface.

## Interfaces Observed
interface
	- a network inteface is the software or hardware point of connection between a computer and a network.

	- allows an os like linux to pass packets back and forth between the local protocol stack and the net-medium.

	



## GOAL:

understand:
	
	- what packet capture is 
	
	- why it matters

how it fits into: 
	
	- network operations
	
	- cybersecurity
	
	- AI evaluation tasks

explain:

	- what a packet is

	- what packet capture means

	- why packet capture is useful

	- what tcpdump does

	- why we sanitize packet capture evidence before committing it to git


what is a packet?

	- a packet is a small unit of layer 3/network layer data.

	- computer communicates over a network.

	- does not send data all at once.

	- data is broken into smaller pieces call packets.

	- computer sends and receives many packets.

packets:
	
	
	your computer -> dns server: what ip address is example.com?
	
	dns server -> your computer: example.com is 93.184.216.34

	your computer -> web server: start connection

	web server -> your computer: acknowledged

	your computer -> web server: request webpage

	web server -> your computer: send webpage data


packets

	helps visualize how data changes names as it moves through
	the network layers.
	
	# networking/osi layers

	layer 1/physical - bits (0s and 1s) - cables, hubs, wi-fi radio

	layer 2/data link - frames - switches, MAC addresses

	layer 3/network layer - packets - routers, ip addresses

	layer 4/transport layer - segment(tcp)/datagram(udp) - ports, firewalls

packet captures:

	- recording or observing packets moving across a network interface.

	- network interfaces:

		- wifi-router

		- ethernet adapter

		- loopback interface

		- vpn interface

	- mac wifi interface

		en0

	- packet capture allows observing of network evidence such as:

		- source ip

		- destination ip

		- protocol

		- source port
		
		- destination port

		- packet size

		- timing

		- request/response behavior
 
packet capture might show
	
		- 192.168.1.50 -> 8.8.8.8 icmp echo request

		- 8.8.8.8 -> 192.168.1.50 icmp echo reply

		- shows that the local machine sent a ping and received a reply
		
		- icmp - internet control messaging protocol

			- ICMP is the error and control message protocol used by IP and the Internet protocol family.
			- used through a "raw socket" for network monitoring and diagnostic functions.
 
why packet capture matters

	- pcap is useful because it lets you verify what is actually happening on the network.

pcaps matter in network troubleshooting

	examples:

		can this host reach the gateway?
		
		is dns responding?

		is traffic leaving the machine?

		is the remote server replying?

		are packets being dropped?

	
	 
pcaps matter in cybersecurity

	examples:

		is a host connecting to an unexpected IP?

		is dns querying suspiscious domains?

		is there scanning activity?

		are credentials being sent insecurely?

		is malware beaconing out?

	
pcaps matter in software engineering

	examples:

		
