BGP EVPN Lab Environment on Cisco Modeling Labs (CML) <br>
Configuration via Ansible playbooks (YAML) based on NX-OS collection/modules <br>
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

Step 1 - Import the EVPN VXLAN lab environment in Cisco CML by import of the YAML file in cisco-cml/cisco-cml-lab-file-nxos-evpn-fabric.yml <br>
Step 2 - Adjust the settings where needed to connect the OOB management network (oobm-r1) to your own "physical" network environment <br>
Step 3 - Start with enabling OOB management + NXAPI on the NX-OS switches by running inital staging config in staging directory <br>
Step 4 - Open VS code and connect to your (Dev Container on the) developer machine to run Ansible playbooks <br>
Step 5 - Start with the provisioning of the underlay (transport) network via ansible-playbook -i inven.yml underlay.yml <br>
Step 6 - Start with the provisioning of the overlay (services) network via ansible-playbook -i inven.yml overlay.yml <br>

JM - April 2026 - NX-OS Lab Environment
