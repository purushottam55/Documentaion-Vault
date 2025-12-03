
#review => let me test my cohmprehenssion 
# (Managing OpenShift Clusters)

### OpenShift Offerings

- **OpenShift Container Platform** → Customer-managed (on-prem / cloud).
    
- **OpenShift Dedicated** → Red Hat–managed (AWS, GCP, Azure, IBM).
    
- **OpenShift Online** → Shared, Red Hat–managed.
    
- **OpenShift Kubernetes Engine** → Core Kubernetes only.
    
- **CodeReady Containers (CRC)** → Local developer cluster.
    
- **OKD** → Upstream open-source version.
    

---

### Core Components

- **CRI-O** → Container runtime (OCI compliant).
    
- **Kubernetes** → Orchestration engine.
    
- **CoreOS** → Immutable OS base.
    
- **Registry + S2I** → Image registry + source-to-image builds.
    
- **Pre-installed services & certified images**.
    

---

### Key Features

- High availability + load balancing.
    
- Auto scaling of pods.
    
- Logging/Monitoring → Prometheus & Elasticsearch.
    
- Service discovery via internal DNS.
    
- Storage (cloud/local).
    
- Source-to-Image (S2I) builds.
    
- Application catalog + Operators.
    
- Cluster extensibility (add new resources).
    

---

### Operators

- Extend Kubernetes functionality (automate deploy, update, backup).
    
- Defined by **Custom Resources (CRs)** + **Custom Resource Definitions (CRDs)**.
    
- Built with **Operator SDK**; managed with **Operator Lifecycle Manager (OLM)**.
    
- Published via **OperatorHub**.
    
- Examples of OpenShift Cluster Operators:
    
    - OAuth server (auth)
        
    - CoreDNS (internal DNS)
        
    - Web console
        
    - Internal image registry
        
    - Monitoring