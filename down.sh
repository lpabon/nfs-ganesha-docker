#!/bin/sh

kubectl delete rc nfs-busybox
kubectl delete pv nfs
kubectl delete pvc nfs
kubectl delete service nfs-server
kubectl delete daemonset nfs-ganesha

