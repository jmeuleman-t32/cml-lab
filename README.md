BGP EVPN Lab Environment on Cisco Modeling Labs (CML) <br>
Configuration via Ansible playbooks (YAML) based on NX-OS modules <br>
URL to NX-OS module: https://galaxy.ansible.com/ui/repo/published/cisco/nxos/ <br>

--------------------------------------------------------
ASN 65000 - BGP EVPN VXLAN <br>
L2VNI (RT2) and L3VNI (RT5) Fabric <br>
--------------------------------------------------------

BGP EVPN VXLAN Fabric <br>
Configuration: IaC (via OOBM) <br>
Underlay: Routed-Links (IS-IS) <br>
BGP-Lo0: 100.64.60.x/32 <br>
Underlay: 10.0.0.0/24 (/31) <br>
BGP-RR: spine-1, spine-2 <br>
BUM: via BGP ingress-replication <br>
