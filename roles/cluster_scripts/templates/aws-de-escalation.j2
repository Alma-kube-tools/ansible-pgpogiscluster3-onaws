#!/bin/bash

INTERFACEATTACHID=`/usr/local/bin/aws ec2 describe-network-interfaces --network-interface-ids {{ aws_netint_id }} |grep AttachmentId |awk '{print $2}'|/bin/rev|/bin/cut -c 2-|/bin/rev|cut -d '"' -f 2`

#####Per Verfica
#echo $INTERFACEATTACHID


#####Spegne interfaccia VIP
echo "Shutdown VIP ethernet Interface"
/sbin/ifdown {{ sec_net_int }}


echo "Detach Network Interface from AWS"
`/usr/local/bin/aws ec2 detach-network-interface --attachment-id $INTERFACEATTACHID`