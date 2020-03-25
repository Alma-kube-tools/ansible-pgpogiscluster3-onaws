#!/bin/bash

INTERFACEATTACHID=`/usr/local/bin/aws ec2 describe-network-interfaces --network-interface-ids eni-0c8d46a7ccd4ac61d |grep AttachmentId |awk '{print $2}'|/bin/rev|/bin/cut -c 2-|/bin/rev|cut -d '"' -f 2`

#####Per Verfica
#echo $INTERFACEATTACHID


#####Spegne interfaccia VIP
echo "Shutdown VIP ethernet Interface"
/sbin/ifdown eth0


echo "Detach Network Interface from AWS"
`/usr/local/bin/aws ec2 detach-network-interface --attachment-id $INTERFACEATTACHID`