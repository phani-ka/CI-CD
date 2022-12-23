# CI-CD
k8s installation

hostnamectl set-hostname k8s-master

cat <<EOF>> /etc/hosts
192.168.1.42 k8s-master
192.168.1.36 k8s-node1 k8s-worker-node1

EOF
setenforce 0
  sed -i --follow-symlinks 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/sysconfig/selinux
  
firewall-cmd --permanent --add-port=6443/tcp   && firewall-cmd --permanent --add-port=2379-2380/tcp &&  firewall-cmd --permanent --add-port=10250/tcp && firewall-cmd --permanent --add-port=10251/tcp && firewall-cmd --permanent --add-port=10252/tcp && firewall-cmd --permanent --add-port=10255/tcp && firewall-cmd --reload

   modprobe br_netfilter
# echo '1' > /proc/sys/net/bridge/bridge-nf-call-iptables
cat <<EOF > /etc/yum.repos.d/kubernetes.repo
[kubernetes]
name=Kubernetes
baseurl=https://packages.cloud.google.com/yum/repos/kubernetes-el7-x86_64
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
EOF
  
  
  swapoff -a
  
 # https://computingforgeeks.com/install-kubernetes-cluster-on-centos-with-kubeadm/
