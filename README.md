# ansible-posqlpgpoolcl3-onAWS
Delivery of a PostgreSQL+PgPool+postGIS Cluster with 3 nodes on AWS

# AWS prerequisites
Make sure that the AWS environment has:

* An additional data volume associated with each node
* Service Group with open Inbound rules for SSH connection
* that an ip was given to the primary network card
* that a NetworkInterface not associated with any node has been created

On the Ansible server:

* Download with git clone
* Inside the inventory path insert the "key.pem" for access in SSH
* Inside the inventory path, insert the awscliv2.zip package
* Modify the hosts file of the ansible server by adding the ip of the hosts to reach and naming them as specified in posqlpgpool.hosts

# Installation and initial configuration of the nodes

* check the variable in group_vars / all / vars.yml
* if necessary change the values of the variables according to your environment

launch the ansible playbook with the command:

* ansible-playbook -i posqlpgpool.hosts posqlpgpool.yml --key-file=./chiave.pem --user=centos
