### Creadintials
#### ESXi host
username: root2
password : PDblr#543
#### openVpn PD
user : pdblr
pass : !Prodev#543

---
## Setup
### OCP ESXI SETUP CHECKLIST : 
- [x] 1 node → 4 vCPU, 16GB RAM, 100GB storage, RHEL 8.4/8.6  // Bastion Node
- [ ] 1 node → 4 vCPU, 16GB RAM, 100GB storage, RHEL CoreOS  // Bootstrap Node
- [ ] 3 nodes → 4 vCPU, 16GB RAM, 100GB storage each, RHEL CoreOS // Control Plane (Master)
- [ ] 2 nodes → 4 vCPU, 8GB/16GB RAM, 50GB storage each, RHEL CoreOS  //Worker Nodes

### Network Connectivity
- [ ] All Static ip Set and they are able to ping each other

----
// Proceed installation