#!/bin/sh

#------------------------------------
# Network command
#------------------------------------

# Routing setting.
function route-add()
{
    # route add -net 52.0.0.0 netmask 255.255.0.0 gw 192.168.x.x
    route add -net $1 netmask $2 gw $3
}

# ネットワーク帯域制限削除
function tc-del()
{
    tc qdisc del dev eth1 root
}

# Show current network limitation
function tc-show()
{
    tc -s class ls dev eth1
}

# Set network limitation
function tc-set()
{
    tc qdisc add dev eth1 root handle 1: htb default 10
    tc class add dev eth1 parent 1:  classid 1:1  htb rate  1000Mbit ceil 1000Mbit burst 1250Kb cburst 1250Kb
    tc class add dev eth1 parent 1:1 classid 1:10 htb rate     1Mbit ceil 1000Mbit burst 1250Kb cburst 1250Kb
    tc class add dev eth1 parent 1:1 classid 1:20 htb rate     1Mbit ceil  70Mbit burst 1250Kb cburst 1250Kb
 
    tc qdisc add dev eth1 parent 1:10 handle 100: pfifo limit 1000
    tc qdisc add dev eth1 parent 1:20 handle 200: pfifo limit 1000
  
    tc filter add dev eth1 protocol ip parent 1:0 prio 1 u32 match ip dport 443 0xffff flowid 1:20
}

# Delete network limitation.
function tc-del()
{
    tc qdisc del dev eth1 root
}

