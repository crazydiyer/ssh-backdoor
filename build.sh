yum install -y openssl-devel zlib-devel pam-devel nano
apt-get install libssl-dev zlib1g-dev libpam0g-dev nano -y
sshd -v
sleep 15
nano version.h
./configure --prefix=/usr/ --sysconfdir=/etc/ssh/ --with-pam --with-kerberos5
make
make install
service sshd restart
service sshd reload
sleep 3
ssh root@127.0.0.1
