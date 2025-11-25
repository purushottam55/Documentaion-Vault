


Deploying OCP - CHATGPT REFERENCE

See flowchart for : 
[[OCP006a - Flow chart for deployment of OCP]]

---

1. Prepare the Environment

Actions:

Provision nodes: 3 master nodes, 2+ worker nodes (for lab/demo, 1 master + 1 worker can work).

Set hostname on each node:

hostnamectl set-hostname master1.example.com

Set /etc/hosts for all nodes:

192.168.1.10 master1.example.com master1
192.168.1.11 master2.example.com master2
192.168.1.12 master3.example.com master3
192.168.1.20 worker1.example.com worker1
192.168.1.21 worker2.example.com worker2

Ensure DNS works (forward & reverse resolution).

Disable firewall & SELinux temporarily (for lab/demo):

setenforce 0
systemctl stop firewalld
systemctl disable firewalld



---

2. Prepare Nodes for OCP

Actions on all nodes:

Update system:

yum update -y

Enable required repos:

subscription-manager repos --enable=rhel-8-for-x86_64-baseos-rpms
subscription-manager repos --enable=rhel-8-for-x86_64-appstream-rpms

Install required packages:

yum install -y wget git net-tools bind-utils iptables-services bridge-utils bash-completion kexec-tools sos psacct

Set system parameters (disable swap, enable br_netfilter):

swapoff -a
sed -i '/swap/d' /etc/fstab
modprobe br_netfilter
echo 1 > /proc/sys/net/bridge/bridge-nf-call-iptables

Reboot nodes (optional but recommended).



---

3. Prepare the Bootstrap Host

Actions:

This can be your local machine (Linux).

Install OpenShift CLI (oc) & Installer (openshift-install):

wget https://mirror.openshift.com/pub/openshift-v4/clients/ocp/latest/openshift-install-linux.tar.gz
wget https://mirror.openshift.com/pub/openshift-v4/clients/ocp/latest/openshift-client-linux.tar.gz
tar -xvf openshift-install-linux.tar.gz
tar -xvf openshift-client-linux.tar.gz
mv oc kubectl openshift-install /usr/local/bin/

Verify:

oc version
openshift-install version



---

4. Prepare Pull Secret & Installation Config

Actions:

Create Red Hat account & generate pull secret.

Create install directory:

mkdir ~/ocp-install
cd ~/ocp-install

Generate install-config.yaml (simplest method):

openshift-install create install-config

Fill in:

Cluster name

Base domain

Pull secret

Platform: Baremetal/None for lab

Control plane & compute nodes counts


Verify file install-config.yaml.



---

5. Create the Cluster

Actions:

Create manifests:

openshift-install create manifests

Optional: Edit manifests/ if you want to customize.

Create ignition files:

openshift-install create ignition-configs

This produces:

bootstrap.ign

master-*.ign

worker-*.ign




---

6. Boot the Cluster Nodes

Actions:

For each node (bootstrap, master, worker), provide the ignition files:

Either via PXE boot / ISO / RHCOS image.


Boot nodes in the following order:

1. Bootstrap node – temporarily runs installer.


2. Masters – use master ignition.


3. Workers – use worker ignition.





---

7. Monitor Installation

Actions:

On bootstrap host:

openshift-install wait-for bootstrap-complete

Then remove bootstrap node:

openshift-install wait-for install-complete

Verify cluster:

oc login -u kubeadmin -p <password> https://api.<cluster>.<domain>:6443
oc get nodes



---

8. Post-Installation

Actions:

Log into OpenShift Web Console:
https://console-openshift-console.apps.<cluster>.<domain>

Configure default projects, storage classes, networking.

Patch & update cluster if needed:

oc adm upgrade



---

✅ This is a minimal micro-level flow for a simple OCP deployment.



Jump :
[[OCP CONCEPTS]]