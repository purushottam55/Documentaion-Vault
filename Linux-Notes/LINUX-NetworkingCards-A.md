NetworkingCRDS:
NC:fdstuff

----
###### C1

[root@node1 ~]# ip r l
default via 192.168.118.2 dev ens33 proto static metric 100
192.168.118.0/24 dev ens33 proto kernel scope link src 192.168.118.11 metric 100
[root@node1 ~]#


>>>>>>>>>>>>>>>>> Lets have explaination below. 


[root@node1 ~]# ip r l          // Shows the routing table (list of routes)

default via 192.168.118.2 dev ens33 proto static metric 100  
// "default" = route for all traffic not matching other routes  
// "via 192.168.118.2" = send traffic to gateway 192.168.118.2  
// "dev ens33" = use network interface ens33  
// "proto static" = route set manually (not learned dynamically)  
// "metric 100" = route priority (lower = higher priority)

192.168.118.0/24 dev ens33 proto kernel scope link src 192.168.118.11 metric 100  
// Route for local network 192.168.118.0/24  
// "dev ens33" = connected through ens33  
// "proto kernel" = created automatically by kernel  
// "scope link" = only valid within this network link  
// "src 192.168.118.11" = system’s IP address on this interface  
// "metric 100" = route priority  

// for details see [[#c2]]
----
###### C2
1. Default Route   // from [[#c1]]

Jab system ko koi unknown address milta hai (jaise google.com ya koi external IP),
to wo default gateway se bahar bhejta hai.

Yahaan gateway hai 192.168.118.2

Aur packet bhejne ke liye ens33 interface use hota hai.

proto static matlab admin (tum) ne manually set kiya hai, automatic nahi.

metric 100 priority value hai. Kam metric matlab zyada preference.

Example:
Tumhare ghar se koi naya jagah jana ho aur tumhe road ka idea na ho,
to tum sabse pehle default road (main gate se bahar) lete ho. Wahi yeh route hai.


----
###### C3
2. Local Network Route

Yeh route sirf apne LAN ke andar ke IPs ke liye hai,
jaise 192.168.118.x wale sab address.

scope link ka matlab: “Sirf link ke andar hi valid, bahar mat bhejna.”

proto kernel matlab kernel (system) ne automatically banaya
jab tumne network interface (ens33) ko IP assign kiya.

src 192.168.118.11 matlab tumhara local IP address.

Example:
Yeh waise hi hai jaise tumhare society ke andar logon se baat karna —
gate ke bahar jaane ki zarurat nahi.

🧠 Summary:

Iska matlab system ke paas 2 raaste hain:

Bahar duniya ke liye (internet) – Default route

Apne LAN ke liye (local machines) – Local route

----
###### C4
┌───────────────────────────┤ Edit Connection ├───────────────────────────┐  
// Ye poora window network connection ko edit karne ke liye hai.  
// “nmtui” command se khulta hai, jo NetworkManager ka text-based tool hai.  

Profile name  Ethernet connection 1  
// Connection ka naam (label). Isse tum multiple connections pehchan sakte ho.  
// Chahe to rename karke "OfficeLAN" ya "HomeLAN" rakh sakte ho.  

Device  purush121  
// Ye network interface ka naam hai (jaise ens33, eth0, wlan0).  
// Is interface par ye connection apply hoga.  

══════════════════════════════════════════════════════════════════════════  

═ ETHERNET  <Show>  
// Section for Ethernet (wired) settings. Normally “Show” par enter karke  
// MAC address, MTU size, duplex mode jaise advanced wired settings dekh sakte ho.  
// Default me kuch change karne ki zarurat nahi hoti.  

══════════════════════════════════════════════════════════════════════════  

╤ IPv4 CONFIGURATION  <Automatic>  
// IPv4 settings ka section. “Automatic” matlab DHCP se IP milta hai.  
// Manual IP dena ho to “Manual” select karo.  

│ Addresses 192.168.121.22  <Remove>  
// System ka static IP address. Example: 192.168.121.22  
// Agar manually IP dena hai to yahan likhte hain.  

│ Gateway 192.168.121.0  
// Router ka IP jiske through packets bahar network ya internet tak jate hain.  
// Default route isi gateway se jata hai.  

│ DNS servers 8.8.8.8  <Remove>  
// Domain Name Server (DNS) jo hostnames ko IP me convert karta hai.  
// Google DNS (8.8.8.8) commonly use hota hai.  

│ Search domains <Add...>  
// Optional. Agar same domain ke multiple servers hain to  
// ye automatically domain suffix add karne me help karta hai.  

│ Routing (No custom routes) <Edit...>  
// Agar tumhe specific route banana hai (custom path) to “Edit...” me jao.  
// Example: kisi specific network ke liye alag gateway dena.  

│ [ ] Never use this network for default route  
// Agar is box ko tick karo, to ye connection internet ke liye use nahi hoga.  
// Sirf local traffic ke liye rahega.  

│ [X] Ignore automatically obtained routes  
// Matlab: DHCP se mile routes ignore karo.  
// Sirf manual routes follow kare. Ye static network setup me useful hota hai.  

│ [ ] Ignore automatically obtained DNS parameters  
// Agar tick karo to DHCP ke diye hue DNS ko ignore karega.  
// Sirf manually diya hua DNS (jaise 8.8.8.8) use karega.  

│ [ ] Require IPv4 addressing for this connection  
// Agar ye enable hai aur IP nahi milta to connection fail hoga.  
// Normally isse unchecked hi rakhte hain.  
.....

═ IPv6 CONFIGURATION  <Automatic>  
// IPv6 settings section. Agar network IPv6 support karta hai to yahan se manage kar sakte ho.  
// “Automatic” matlab DHCPv6 ya Router Advertisement se IP milega.  


[X] Automatically connect  
// System start hote hi ye connection automatically up ho jayega.  

[X] Available to all users  
// System ke sab users is network connection ko use kar sakte hain.  
// Agar unchecked ho to sirf creator (root) use kar payega.  
 

<Cancel>  <OK>  
// OK = Save aur apply changes.  
// Cancel = Changes discard karke exit.  


----
###### C5


----
###### C6


----
###### C7


----
###### C8


----
###### C9


----
###### C10


----