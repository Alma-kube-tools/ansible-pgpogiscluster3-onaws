# ansible-posqlpgpoolcl3-onAWS
Produzione di un cluster PostgreSQL + PgPool con 3 nodi su AWS

# Prerequisiti AWS
Assicurarsi che sull'ambiente AWS sia presente:

* Un volume aggiuntivo per i dati associato a ciascun nodo
* Service Group con regole Inbound aperte per la connessione SSH
* che sia stato dato un ip alla scheda di rete primaria
* che sia stata creata una NetworkInterface non associata ad alcun nodo

Sul server Ansible:

* Fare il download con git clone
* All'interno dell'inventory path inserire la "chiave.pem" per l'accesso in SSH
* Modificare il file hosts del server ansible aggiungendo gli ip degli host da raggiungere e nominandoli come specificato in posqlpgpool.hosts

# Installazione e configurazione iniziale dei nodi 

* verificare la variabili in group_vars/all/vars.yml
* se necessario modificare i valori delle variabili in base al proprio ambiente

lanciare il playbook ansible con il comando:

* ansible-playbook -i posqlpgpool.hosts posqlpgpool.yml --key-file=./chiave.pem --user=centos