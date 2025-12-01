**OpenShift Container Platform — Bare-Metal Cluster Installation Guide**

**Objective:**

This document outlines the installation procedure for an OpenShift 4.16 cluster on a **bare-metal environment**. The setup consists of **one Bastion VM** and **one Bootstrap VM**, both hosted on **KVM**, along with **three bare-metal servers** that function as both **control plane (master)** and **worker nodes**.

  
  

**Workflow:  
  
**

1. Log in to the **KVM host** and create one virtual machine for the **Bastion node**.
2. Start the virtual machine and install the operating system.
3. Configure the Bastion node as per the requirements.
4. Create **ignition files** to configure the **Bootstrap**, **Control Plane**, and **Worker** nodes.
5. Create a **Bootstrap virtual machine** on the KVM host and prepare the **three bare-metal servers** that will act as both **Control Plane** and **Worker** nodes.
6. Configure the **Bootstrap node** using the ignition file.
7. After configuring the **Bootstrap node**, configure the **Control Plane** nodes on the bare-metal servers.

**Prerequisites:  
  
**

- RHEL 9 OS installed and configured on the Bastion node
- RHCOS ISO installed and configured on the Bootstrap machine and bare-metal servers
- Pull secret
- Subscription Manager configured
- Domain name
- Cluster name
- Internet access to the Bastion node
- Free IP range for Bootstrap and three Master nodes

Start Configuring your Bastion Server:

1.      After complete installation, set machine hostname as per requirements.

a.      To set the hostname in machine

![](file:///C:/Users/purus/AppData/Local/Temp/msohtmlclip1/01/clip_image002.png)

2.      Check internet connectivity on machine before you can start the activity

a.       ping 8.8.8.8

![A screenshot of a computer program
AI-generated content may be incorrect.](file:///C:/Users/purus/AppData/Local/Temp/msohtmlclip1/01/clip_image004.png)

3.      Setting the Redhat Subscription Manager:

a.      subscription-manager register (provide username and password which is used to login in redhat console account)

b.      subscription-manager status

4.      disable firewall and selinux

a.       For firewalld  
i. Systemctl stop firewalld  
ii. Systemctl disable firewalld

![A black screen with white text
AI-generated content may be incorrect.](file:///C:/Users/purus/AppData/Local/Temp/msohtmlclip1/01/clip_image006.png)

5.      For Selinux :

i. Vi /etc/selinux/config (change selinux status to disabled state and save and exit from file)

ii. Check status of selinux

![](file:///C:/Users/purus/AppData/Local/Temp/msohtmlclip1/01/clip_image008.png)

6.      For reflecting changes restart the system.

Configure DNS server on the Bastion machine:

·        Install named service

o   yum install bind bind-utils -y

o   systemctl start named

o   systemctl enable named

o   systemctl status named

·        Write forward DNS and Reverse DNS zone file in configuration file

o   Vi /etc/named.conf

o   Add the Red colored text in file

|   |
|---|
|options {<br><br>               listen-on port 53 { 127.0.0.1; 172.25.250.10; };<br><br>               listen-on-v6 port 53 { any; };<br><br>               directory             "/var/named";<br><br>               dump-file            "/var/named/data/cache_dump.db";<br><br>               statistics-file "/var/named/data/named_stats.txt";<br><br>               memstatistics-file "/var/named/data/named_mem_stats.txt";<br><br>               secroots-file        "/var/named/data/named.secroots";<br><br>               recursing-file       "/var/named/data/named.recursing";<br><br>               allow-query     { localhost; any; };<br><br>               /*<br><br>                - If you are building an AUTHORITATIVE DNS server, do NOT enable recursion.<br><br>                - If you are building a RECURSIVE (caching) DNS server, you need to enable<br><br>                  recursion.<br><br>                - If your recursive DNS server has a public IP address, you MUST enable access<br><br>                  control to limit queries to your legitimate users. Failing to do so will<br><br>                  cause your server to become part of large scale DNS amplification<br><br>                  attacks. Implementing BCP38 within your network would greatly<br><br>                  reduce such attack surface<br><br>               */<br><br>               recursion yes;<br><br>                dnssec-validation no;<br><br>               managed-keys-directory "/var/named/dynamic";<br><br>               geoip-directory "/usr/share/GeoIP";<br><br>               pid-file "/run/named/named.pid";<br><br>               session-keyfile "/run/named/session.key";<br><br>               /* https://fedoraproject.org/wiki/Changes/CryptoPolicy */<br><br>               include "/etc/crypto-policies/back-ends/bind.config";<br><br>};<br><br>  <br>  <br>  <br>  <br>  <br><br>logging {<br><br>        channel default_debug {<br><br>                file "data/named.run";<br><br>                severity dynamic;<br><br>        };<br><br>};<br><br>zone "." IN {<br><br>               type hint;<br><br>               file "named.ca";<br><br>};<br><br>zone "azalio.io" IN {<br><br>               type master;<br><br>               file "forward-zone";<br><br>               allow-update { none; };<br><br>};<br><br>zone "250.25.172.in-addr.arpa" IN {<br><br>               type master;<br><br>               file "reverse-zone";<br><br>               allow-update { none; };<br><br>};<br><br>include "/etc/named.rfc1912.zones";<br><br>include "/etc/named.root.key";|

·        Create 2 files in /var/named for forward and revers zone

o   cd /var/named

o   touch forward-zone reverse-zone

in this file the entry means  
ocp-bastion.azalio.io     =   hostname of bastion  
azalio.io                              =    domain name  
ocp                                       =     cluster name

172.25.250.10                   =      ip of bastion

172.25.250.15                     =      ip of bootstrap

172.25.250.20                     =       ip of master01

172.25.250.21                     =       ip of master02

172.25.250.22                     =        ip of master03

|   |
|---|
|$TTL 1D<br><br>@           IN SOA  ocp-bastion.azalio.io. root.azalio.io. (<br><br>                                                                           0             ; serial<br><br>                                                                           1D          ; refresh<br><br>                                                                           1H          ; retry<br><br>                                                                           1W         ; expire<br><br>                                                                           3H )        ; minimum<br><br>@           IN           NS          ocp-bastion.azalio.io.<br><br>@           IN           A             172.25.250.10<br><br>ocp-bastion         A             172.25.250.10<br><br>;================================================================<br><br>; Master Nodes<br><br>master01.ocp.azalio.io.                  IN           A             172.25.250.20<br><br>master02.ocp.azalio.io.                  IN           A             172.25.250.21<br><br>master03.ocp.azalio.io.                  IN           A             172.25.250.22<br><br>; Temp Bootstrap Node<br><br>bootstrap.ocp.azalio.io.  IN           A             172.25.250.15<br><br>; OpenShift Internal - Load Balancer<br><br>api.ocp.azalio.io.                             IN           A             172.25.250.10<br><br>api-int.ocp.azalio.io.                       IN           A             172.25.250.10<br><br>*.apps.ocp.azalio.io.                       IN           A             172.25.250.10|

And same for reverse-zone file

|   |
|---|
|$TTL 1D<br><br>@           IN SOA  ocp-bastion.azalio.io. root.azalio.io. (<br><br>                                                                           0             ; serial<br><br>                                                                           1D          ; refresh<br><br>                                                                           1H          ; retry<br><br>                                                                           1W         ; expire<br><br>                                                                           3H )        ; minimum<br><br>@           IN           NS          ocp-bastion.azalio.io.<br><br>10           IN           PTR        azalio.io.      #the last number of IP like in this 172.25.250.10<br><br>;===============================================================<br><br>; Master Nodes<br><br>20.250.25.172.in-addr.arpa.         IN           PTR        master01.ocp.azalio.io.<br><br>21.250.25.172.in-addr.arpa.         IN           PTR        master02.ocp.azalio.io.<br><br>22.250.25.172.in-addr.arpa.         IN           PTR        master03.ocp.azalio.io.<br><br>; Temp Bootstrap Node<br><br>15.250.25.172.in-addr.arpa.         IN           PTR        bootstrap.ocp.azalio.io.<br><br>; OpenShift Internal - Load Balancer<br><br>10.250.25.172.in-addr.arpa.         IN           PTR        api.ocp.azalio.io.<br><br>10.250.25.172.in-addr.arpa.         IN           PTR        api-int.ocp.azalio.io.|

Then restart the named file  
![](file:///C:/Users/purus/AppData/Local/Temp/msohtmlclip1/01/clip_image010.png)  
Give the entry in /etc/resolve.conf file

![](file:///C:/Users/purus/AppData/Local/Temp/msohtmlclip1/01/clip_image012.png)

Then check our DNS working or not using the nslookup

·        nslookup ocp-bastion.azalio.io

·        nslookup azalio.io

·        nslookup  ocp-bastion

·        nslooup master01.ocp.azalio.io.

·        nslooup master02.ocp.azalio.io.

·        nslookup master03.ocp.azalio.io.

·        nslookup api.ocp.azalio.io.

·        nslookup api-int.ocp.azalio.io.    

  
  

Configure HAProxy LoadBalancer:

·        Install HAproxy in system

o   yum install haproxy

o   systemctn restart haproxy

o   systemctl enable happroxy

o   Edit file and add details of cluster  
vi /etc/haproxy/haproxy.cfg  
remove all content from this file and add below content  
  
  
  
  
  

|   |
|---|
|global  <br>  log         127.0.0.1 local2  <br>  pidfile     /var/run/haproxy.pid  <br>  maxconn     4000  <br>  daemon  <br>defaults  <br>  mode                    http  <br>  log                     global  <br>  option                  dontlognull  <br>  option http-server-close  <br>  option                  redispatch  <br>  retries                 3  <br>  timeout http-request    10s  <br>  timeout queue           1m  <br>  timeout connect         10s  <br>  timeout client          1m  <br>  timeout server          1m  <br>  timeout http-keep-alive 10s  <br>  timeout check           10s  <br>  maxconn                 3000  <br>listen api-server-6443   <br>  bind *:6443  <br>  mode tcp  <br>  option  httpchk GET /readyz HTTP/1.0  <br>  option  log-health-checks  <br>  balance roundrobin  <br>  server bootstrap bootstrap.ocp.azalio.io:6443 verify none check check-ssl inter 10s fall 2 rise 3 backup   <br>  server master01 master01.ocp.azalio.io:6443 weight 1 verify none check check-ssl inter 10s fall 2 rise 3  <br>  server master02 master02.ocp.azalio.io:6443 weight 1 verify none check check-ssl inter 10s fall 2 rise 3  <br>  server master03 master03.ocp.azalio.io:6443 weight 1 verify none check check-ssl inter 10s fall 2 rise 3  <br>listen machine-config-server-22623   <br>  bind *:22623  <br>  mode tcp  <br>  server bootstrap bootstrap.ocp.azalio.io:22623 check inter 1s backup   <br>  server master01 master01.ocp.azalio.io:22623 check inter 1s  <br>  server master02 master02.ocp.azalio.io:22623 check inter 1s  <br>  server master03 master03.ocp.azalio.io:22623 check inter 1s  <br>listen ingress-router-443   <br>  bind *:443  <br>  mode tcp  <br>  balance source  <br>  server master01 master01.ocp.azalio.io:443 check inter 1s  <br>  server master02 master02.ocp.azalio.io:443 check inter 1s  <br>  server master03 master03.ocp.azalio.io:443 check inter 1s  <br>listen ingress-router-80   <br>  bind *:80  <br>  mode tcp  <br>  balance source  <br>  server master01 master01.ocp.azalio.io:80 check inter 1s  <br>  server master02 master02.ocp.azalio.io:80 check inter 1s  <br>  server master03 master03.ocp.azalio.io:80 check inter 1s|

Restart the service and check the service status

o   Systemctl restart haproxy

![](file:///C:/Users/purus/AppData/Local/Temp/msohtmlclip1/01/clip_image014.png)

to check our named and haproxy running correctly or not  
run this command  
  

o   dig +noall +answer @172.25.250.10 api.ocp.azalio.io

o   dig +noall +answer @172.25.250.10 api-int.ocp.azalio.io

o   dig +noall +answer @172.25.250.10 random.apps.ocp.azalio.io

o   dig +noall +answer @172.25.250.10 console-openshift-console.apps.ocp.azalio.io

o   dig +noall +answer @172.25.250.10 bootstrap.ocp.azalio.io

o   dig +noall +answer @172.25.250.10 -x 172.25.250.10

o   dig +noall +answer @172.25.250.10 -x 172.25.250.23

Configure Webserver:

•       Install httpd Package in system

o   yum install httpd -y

•       Change listen port from 80 to 8080 in configuration file

o   Vi /etc/httpd/conf/httpd.conf

![](file:///C:/Users/purus/AppData/Local/Temp/msohtmlclip1/01/clip_image016.png)

•       Restart the Service and enable it

  
  
Generate Ignition files.

•       Download OpenShift Installer

o   wget [https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.16.0/openshift-client-linux-4.16.0.tar.gz](https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.16.0/openshift-client-linux-4.16.0.tar.gz)

•       Download OpenShift client

o   wget [https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.16.0/openshift-install-linux-4.16.0.tar.gz](https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.16.0/openshift-install-linux-4.16.0.tar.gz)  
  

o   untar both and tar file  
tar -zxvf openshift-client-linux-4.16.0.tar.gz  
tar -zxvf openshift-install-linux-4.16.0.tar.gz  
  

•       Record the pull secret

o   Use the following link to copy or download the pull secret for installation. Use login and password which used for subscription manager.  
  

[https://console.redhat.com/openshift/create/local](https://console.redhat.com/openshift/create/local)

![](file:///C:/Users/purus/AppData/Local/Temp/msohtmlclip1/01/clip_image018.png)

•       Create SSH key for bastion

o   Create ssh-key by using command

o   Use ssh-keygen command to create ssh keys and copy data from id_rsa.pub file from .ssh directory.

•       Create directories to create ignition files

o   mkdir -p /root/ocp-installation

First create/write the install-config.yaml file

o   vim install-config.yaml

❖ Pull- secret: This file contains the complete content of text in pull secret file❖ SSH key: Add the content of id_rsa.pub file❖ All the commas here should not be changed. This can give invalid ending error.❖ You can keep a copy of this file, as this will be consumed, and new file are created.

|   |
|---|
|apiVersion: v1  <br>baseDomain: azalio.iocompute:   <br>- hyperthreading: Enabled   <br>  name: worker  <br>  replicas: 0   <br>controlPlane:   <br>  hyperthreading: Enabled   <br>  name: master  <br>  replicas: 3   <br>metadata:  <br>  name: ocpnetworking:  <br>  clusterNetwork:  <br>  - cidr: 10.128.0.0/14   <br>    hostPrefix: 23   <br>  networkType: OVNKubernetes   <br>  serviceNetwork:   <br>  - 172.30.0.0/16  <br>platform:  <br>  none: {}   <br>fips: false   <br>pullSecret: '{"auths": ...}'   <br>sshKey: 'ssh-ed25519 AAAA...'|

•       Generate manifests

o   Manifest directory is created after applying following command

§  Go to /root/ location and hit the following command

./openshift-install create manifests --dir ocp-installation

![](file:///C:/Users/purus/AppData/Local/Temp/msohtmlclip1/01/clip_image020.png)  
  

o   Now edit the scheduler setting to disable pod deployment on master  
▪ Edit the cluster-scheduler-02-config.yaml file (change from true to false in file)

![A screen shot of a computer
AI-generated content may be incorrect.](file:///C:/Users/purus/AppData/Local/Temp/msohtmlclip1/01/clip_image022.png)

•       Generate Ignition Files

o   By using following command, we create ignition file  
 ./openshift-install create ignition-configs --dir ocp-installation

![](file:///C:/Users/purus/AppData/Local/Temp/msohtmlclip1/01/clip_image024.png)

o   This are important files  
▪ /ocp-installtion directory contains the ignition files for bootstrap, control plane and worker node to join the machines in OCP cluster.  
▪ /ocp-installation/auth directory contain kubeconfig file and password that will used to console login into the cluster

![](file:///C:/Users/purus/AppData/Local/Temp/msohtmlclip1/01/clip_image026.png)

•       Configure ignition files on webserver.

o   Copy all created ignition files to webserver directory and provide required permission to that.

 ▪ mkdir -p /var/www/html/ocp

 ▪ cp /root/workspace/ocp/*.ign /var/www/html/ocp/

 ▪ chmod -R 755 /var/www/html/ocp/*

 ▪ Confirm that the ignition files are accessible from web, to check it Browse url http://<IP of bastion>:8080/ocp

![](file:///C:/Users/purus/AppData/Local/Temp/msohtmlclip1/01/clip_image028.png)  
  
**Configure Bootstrap Machine:**

To get the bootstrap VM up and running, we need the machine to be booted using KVM. Following are the steps:  
  
 • Open the console view of KVM server and create new machine as per requirements.  
 • Attach the rhcos live iso to the machine to be used during boot  
 • Edit the boot option to use CD/DVD  
 • Start the machine and install and configure the RHCOS vm  
  
**Bootstrap Node Configuration:**

**Align Time Zone with Bastion Node  
**  
Ensure the Bootstrap node’s time zone matches the Bastion node:

timedatectl set-timezone <Bastion_Timezone>

timedatectl status

 **Assign a Static IP Address  
**  
Configure the network interface enp0s3 with a static IP:

·        nmcli connection modify enp0s3 ipv4.addresses 172.25.250.15/24 ipv4.method manual ipv4.gateway 172.25.250.1 ipv4.dns 172.25.250.10

·        nmcli connection down enp0s3

·        nmcli connection up enp0s3

**Set the Hostname  
**  
Assign the hostname for the Bootstrap node:

·        hostnamectl set-hostname bootstrap.ocp.azalio.io

i**nstall RHCOS Using Ignition File  
**  
Apply the ignition configuration file to the Bootstrap node:

·        sudo coreos-installer install /dev/vda \  
--ignition-url=http://172.25.250.10:8080/ocp/bootstrap.ign \  
 --insecure-ignition \  
--copy-network

**Reboot the Bootstrap Node**

·        sudo reboot

time zone of bootstrap is aligned with the bastion  
![](file:///C:/Users/purus/AppData/Local/Temp/msohtmlclip1/01/clip_image030.jpg)  
  
  
  
  
  

**Master Node Configuration**

**Align Time Zone with Bastion Node** Ensure each Master node’s time zone matches the Bastion node:

·        timedatectl set-timezone <Bastion_Timezone>

·        timedatectl status

**Assign a Static IP Address**  
Configure the network interface with the assigned static IP for each Master node.  
_(Replace <interface> and <IP> with the appropriate values for each server.)_

·        nmcli connection modify <interface> ipv4.addresses <IP>/24 ipv4.method manual ipv4.gateway 172.25.250.1 ipv4.dns 172.25.250.10

·        nmcli connection down <interface>

·        nmcli connection up <interface>

**Set the Hostname**  
Assign the hostname for each Master node:

·        hostnamectl set-hostname <masterX>.ocp.azalio.io

**Example:**

- master01.ocp.azalio.io
- master02.ocp.azalio.io
- master03.ocp.azalio.io

**Install RHCOS Using Ignition File**  
Apply the ignition configuration file to each Master node:

·        sudo coreos-installer install /dev/vda \  
   --ignition-url=http://172.25.250.10:8080/ocp/master.ign \  
 --insecure-ignition \  
--copy-network

2. **Reboot the Master Node**

·        sudo reboot

Top of Form