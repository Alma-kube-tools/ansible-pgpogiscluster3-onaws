# ansible-posqlpgpool-cluster
# Prerequisiti AWS
Assicurarsi che sulle macchine sia presente:

* Service Group con regole Inbound aperte per la connessione SSH
* che sia stato dato un ip alla scheda di rete

Fare il download con git clone
Modificare il file posqlpgpool.hosts con gli ip degli host da raggiungere
Verificare le versioni passate come variabili nel file vars


# Installazione e configurazione iniziale dei nodi 
modificare le variabili sotto group_vars/all/vars.yml

* datadev_name: nvme1n1
* postgresqlpackage: postgresql11
* pgpoolpackage: pgpool-II-pg11
* postgresql_dir: "/postgresql"
* postgresql_data: "/postgresql/pg_data"
* postgresql_arc: "/postgresql/archive"

lanciare lo script ansible e alla richiesta delle credenziali mettere quelle di root dei nodi:

* ansible-playbook -i posqlpgpool.hosts posqlpgpool.yml -k
