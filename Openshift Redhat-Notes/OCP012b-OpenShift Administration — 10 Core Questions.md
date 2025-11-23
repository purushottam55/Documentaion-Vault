# OpenShift Administration — 10 Core Questions (Each answered in 3-line format)

---

### 1. What is OpenShift in the Red Hat ecosystem?
1) Enterprise Kubernetes with added guardrails.  
2) Depth: It standardizes cluster lifecycle, security, images, networking.  
3) Action: Master it and you control infra that companies pay premium for.

---

### 2. How does OpenShift handle authentication & RBAC?
1) Identity via OAuth + fine-grained role-based access.  
2) Depth: Auth decides “who you are,” RBAC decides “what you touch.”  
3) Action: Build reusable RBAC blueprints—consulting goldmine.

---

### 3. What is a Worker Node vs Master Node in OCP?
1) Masters run control plane; workers run workloads.  
2) Depth: Separation gives reliability, scalability, and clean failure domains.  
3) Action: Know node tuning → optimize large clusters → high-pay skill.

---

### 4. How does OpenShift manage networking?
1) Uses SDN (OVN-Kubernetes) for pod-to-pod, service routing, ingress.  
2) Depth: It abstracts infra into a programmable mesh.  
3) Action: Learn ingress + routes deeply—companies pay for traffic reliability.

---

### 5. What is the role of Operators in OCP?
1) Operators automate lifecycle of apps/platform components.  
2) Depth: They encode human operational knowledge as software.  
3) Action: Create custom Operators → rare + high-paid expertise.

---

### 6. What is ImageStream & why does OpenShift use it?
1) Metadata layer tracking images inside the platform.  
2) Depth: Enables rebuilds, rollouts, security scanning, controlled promotes.  
3) Action: Implement CI/CD with ImageStreams → sell deployment automation.

---

### 7. How does OpenShift handle persistent storage?
1) Dynamic provisioning via CSI + StorageClasses.  
2) Depth: It makes stateful workloads first-class citizens.  
3) Action: Build templates for storage policies → production-critical skill.

---

### 8. What is the OpenShift Route?
1) Public entry to services using HAProxy-based routing.  
2) Depth: It’s traffic choreography between outside world and cluster.  
3) Action: Tune routes for A/B, blue-green → offer optimization services.

---

### 9. How does OpenShift handle logging & monitoring?
1) Uses Loki/ES for logs and Prometheus/Grafana for metrics.  
2) Depth: Observability is the nervous system of the cluster.  
3) Action: Create dashboards for exec visibility → immediate business value.

---

### 10. How do updates & upgrades work in OpenShift?
1) Automated, operator-driven, versioned cluster lifecycle.  
2) Depth: ClusterVersion Operator keeps platform coherent end-to-end.  
3) Action: Become “upgrade specialist” → orgs pay heavily for safe upgrades.

---

**Note (Distilled):**  
OpenShift mastery is leverage. Companies buy *reliability*, not YAML. Becoming the engineer who keeps clusters alive, scalable, secure, and fast directly creates earning power.