BGP EVPN Lab Environment on Cisco Modeling Labs (CML)
Configuration via Ansible playbooks (YAML) based on NX-OS modules
URL to NX-OS module: https://galaxy.ansible.com/ui/repo/published/cisco/nxos/

--------------------------------------------------------
ASN 65000 - BGP EVPN VXLAN
L2VNI (RT2) and L3VNI (RT5) Fabric
--------------------------------------------------------
BGP EVPN VXLAN Fabric
Configuration: IaC (via OOBM)
Underlay: Routed-Links (IS-IS)
BGP-Lo0: 100.64.60.x/32
Underlay: 10.0.0.0/24 (/31)
BGP-RR: spine-1, spine-2
BUM: via BGP ingress-replication
