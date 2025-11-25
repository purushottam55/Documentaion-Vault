

### **Round Robin Kya Hai?**  
Round Robin ek **"Bari-Bari Sabko Chance Do"** system hai. Jaise:  
- **4 Dost (Pods)** hain aur **1 Pizzawala (Load Balancer)** hai.  
- Har naya order (request) **ek naye dost ko** jayega.  

**Example:**  
1. Pehla request → **Pod 1** ko  
2. Dusra request → **Pod 2** ko  
3. Teesra request → **Pod 3** ko  
4. Chautha request → **Pod 4** ko  
5. 5th request → **Phir se Pod 1** ko (cycle repeat)  

### **Kubernetes/OpenShift Mein Kaam Kaise Karta Hai?**  
- **Service** (Load Balancer) **Pods ki list** banata hai.  
- Har naya connection **agli Pod** pe bhejta hai.  
- Sabko **equal traffic** milta hai.  

**Advantage:**  
- Simple hai, kisi ek Pod pe zyada load nahi padta.  
- Automatic chal jata hai, koi setting nahi karni padti.  

**Disadvantage:**  
- Agar koi Pod slow hai, uska wait karna padta hai (smart balancing nahi hota).  

**Real-Life Example:**  
- **Ration Shop (Service)** ke saamne **4 lines (Pods)** hain.  
- Har naya aadmi **agli line** mein lagta hai.  

---

### **Technical Detail (Thoda Advanced)**  
- **Kube-proxy** (Kubernetes ka network manager) **iptables/IPVS** use karke Round Robin rules banata hai.  
- OpenShift Router (HAProxy) bhi Round Robin kar sakta hai, lekin woh **path/host** bhi dekh ke routing karta hai.  

Agar aur samajhna ho toh batao! 😊