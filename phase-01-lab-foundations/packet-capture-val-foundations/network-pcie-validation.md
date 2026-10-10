# how network va;idation and pcie validation relate
	- network and pcie look different.
	
	- network deals with:
		- packets
		- interfaces
		- ip addresses
		- ports
		- protocols
		- latency
		- loss
		- routing
		- dns
		- tcp/udp

	- pcie validation:
		- lanes
		- links
		- generations
		- negotiation
		- link width
		- enumeration
		- BARs
		- configuration space
		- ltssm states
		- aer errors
		- throughput
		- dma behavior
		- power management

	- validation mindset:
		- what was expected?
		- what actually happened?
		- what evidence proves it?
		- can we reproduce it?
		- can we automate the check?
		- can we explain the failure clearly?

	- shared validation pattern: networking & pcie:
		
		- validation skill | networking | pcie
		
		- discovery: | ifconfig, ip addr | lspci, device manager, IORegistry
		
		- confirm link: | nic has ip/link | pcie device enumeration
	
		- confirm negotiated capability: | speed/duplex/wi-fi rate | link speed/lik width 
		
		- generate traffic: | ping, dig, curl, iperf | memory/DMA worklaod, benchmark, driver i/o

		- capture evidence: | tcpdump, logs | lspci -vv. AER logs, kernel logs

		- validate expected behavior: | echo reply received | expected Gen/width negotiation

		- detect errors: | packet loss. timeout | aer correctable/uncorrectable errors

		- automate checks: | python network tests | python parse lspci/logs

		- report defect: | dns timeout bug | link downtraining bug

