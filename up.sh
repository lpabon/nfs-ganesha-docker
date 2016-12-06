#!/bin/sh

# Create service
kubectl create -f nfs-daemonset.json
echo "Press <ENTER> when pod ready..."
read dummy

# Create service
kubectl create -f nfs-service.yaml

# Set PV
service_ip=$(kubectl get service | grep nfs | awk '{print $2}')
sed -e "s#%%SERVICE_IP%%#$service_ip#" nfs-pv.yaml.sed | kubectl create -f -

# Set user requirements
kubectl create -f nfs-pvc.yaml
kubectl create -f nfs-busybox-rc.yaml
