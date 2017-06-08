apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common \
    linux-image-extra-$(uname -r) \
    linux-image-extra-virtual

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

apt-get -y update

sudo apt-get -y install docker-ce
