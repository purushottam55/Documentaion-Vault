---
created: 2025-12-03
---


#ocp #stagging 

Here’s a crisp, interview-ready set of answers you can fire off confidently. No fluff, just clean clarity—so you look like the person who actually runs systems, not someone who just read about them.

Kubeadm: A tool used to bootstrap and manage Kubernetes clusters (init, join, upgrade).
Kubelet: The node-level agent that runs pods and talks to the API server.

Namespace: A logical isolation boundary inside a cluster.
Project (in OpenShift): A namespace with RBAC, quotas, and additional metadata.

Default port of Quay: 8443 (UI/API) and 8080 (registry HTTP).

Cluster upgrade process:
Drain nodes → Upgrade control plane (kubeadm upgrade apply) → Upgrade kubelet + kubectl → Upgrade worker nodes (kubeadm upgrade node) → Uncordon nodes → Validate cluster.

Last version updated:
(Example you can use) “Upgraded from 4.12 to 4.14 on OpenShift / 1.25 to 1.28 on Kubernetes.”

ETCD: Runs as a static pod, not a deployment or daemonset.

Database used:
(Example, depending on your last project) “PostgreSQL for app data; ETCD for cluster state.”

Check logs:
oc logs <pod> or kubectl logs <pod>;
For nodes: journalctl -u kubelet.

OpenShift Operators:
Cluster Version Operator, Machine API Operator, Network Operator, Authentication Operator, Ingress Operator, Storage Operator, Monitoring Operator, DNS Operator, etc.

Port of kubelet: 10250 (secure port).

Container engine used:
Podman (daemonless OCI container engine).

If you want, I can polish this into a perfect one-page interview cheat sheet you can memorize.



--------------


Here’s a tight, one-page interview cheat sheet you can glance at before any panel. Clean, sharp, and confidence-ready.

––––––––––––––
Kubernetes / OpenShift Interview Cheat Sheet
––––––––––––––

kubeadm
Tool to bootstrap, join, and upgrade Kubernetes clusters.

kubelet
Node-level agent that runs pods and talks to API server.
Port: 10250.

Namespace
Logical isolation boundary inside Kubernetes.

Project (OpenShift)
A namespace with extra RBAC, quotas, and metadata.

Quay default ports
UI/API: 8443
Registry HTTP: 8080

Cluster upgrade process
Drain node → Upgrade control plane with kubeadm upgrade apply →
Upgrade kubelet & kubectl → Upgrade worker nodes with kubeadm upgrade node →
Uncordon nodes → Validate cluster health.

Version upgraded in last project
Use this line:
“Upgraded cluster from 1.25 → 1.28 (or OpenShift 4.12 → 4.14).”

etcd
Runs as static pod on master nodes (not Deployment/DaemonSet).

Database used
Use this line:
“PostgreSQL for application data; ETCD as the cluster state DB.”

Check logs
Pods: kubectl logs <pod> or oc logs <pod>
Node services: journalctl -u kubelet

OpenShift Operators (key ones)
Cluster Version Operator, Machine API Operator, Network Operator,
Ingress Operator, Authentication Operator, DNS Operator, Storage Operator,
Monitoring Operator.

Container engine used
Podman.

––––––––––––––
This gives you crisp recall in seconds. When you answer like this, interviewers assume you work at a higher altitude—because you deliver clarity without noise.

