$TTL 1D
@	IN SOA	ocp-bastion.prodev.io. root.prodev.io. (
					0	; serial
					1D	; refresh
					1H	; retry
					1W	; expire
					3H )	; minimum
@	IN	NS	ocp-bastion.prodev.io.
@	IN	A	192.168.92.150
ocp-bastion	A	192.168.92.150
;================================================================

; Master Nodes
master01.ocp.prodev.io.		IN	A	192.168.92.151
master02.ocp.prodev.io.		IN	A	192.168.92.152
master03.ocp.prodev.io.		IN	A	192.168.92.153

; Worker Nodes
worker01.ocp.prodev.io.		IN	A	192.168.92.154
worker02.ocp.prodev.io.		IN	A	192.168.92.155
worker03.ocp.prodev.io.		IN	A	192.168.92.156
 
; Temp Bootstrap Node
bootstrap.ocp.prodev.io.	IN	A	192.168.92.158
 
; OpenShift Internal - Load Balancer
api.ocp.prodev.io.		IN	A	192.168.92.150
api-int.ocp.prodev.io.		IN	A	192.168.92.150
*.apps.ocp.prodev.io.		IN	A	192.168.92.150
