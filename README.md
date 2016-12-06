# What it is?

An experiment to run NFS Ganesha VFS module in a Container

# Build and run the Container

```bash 
  # docker build -t ganesha .
  # # exports /home/exports using the following command
  # docker run -ti --net=host --privileged  -v /home/exports/:/exports ganesha
  # # test mount on another terminal
  # mount localhost:/exports /mnt
```

# Test on Kubernetes

You can use the existing objects available, or run the demo.  To bring up the NFS storage and the applications using it type: `./up.sh`.  To shut it down type: `./down.sh`.
