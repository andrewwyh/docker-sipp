Docker build

docker build -t sipp .

Docker run command

docker run -it --mount type=bind,src=${PWD}/config,dst=/sipp/config --mount type=bind,src=${PWD}/config/pcap,dst=/sipp/pcap andrewwyh/docker-sipp bash

Generate calls (default 10 every second)
./sipp -p 10000 -sf config/uac_pcap.xml <remote host>:5061

Generate 40 users at one time
./sipp -users 40 -p 10000 -sf config/uac_pcap.xml <remote host>:5061

-> need to edit uac_pcap to replace [local ip address] to current external IP address

     v=0
      o=user1 53655765 2353687637 IN IP[local_ip_type] <local external IP address>
      s=-
      c=IN IP[local_ip_type] <local external ip address>

