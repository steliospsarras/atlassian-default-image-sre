FROM atlassian/default-image:2

MAINTAINER Stelios Psarras <stelios.psarras@cyantific.net>

RUN \
    # update repositories indexes
    apt-get update -y && \
    apt-get upgrade -y && \
    # install some basic tooling
    apt-get install -y jq unzip && \
    # install pip
    curl -O https://bootstrap.pypa.io/get-pip.py && python3 get-pip.py && \
    ## install AWS cli
    pip install awscli && \ 
    # install Ansible
    apt-get install -y ansible && \
    # install Packer
    #unlink /usr/sbin/packer && \
    cd /root && mkdir tmp && cd tmp && \
    curl https://releases.hashicorp.com/packer/1.2.1/packer_1.2.1_linux_amd64.zip > packer.zip && \
    unzip packer.zip && \
    mv packer /usr/bin/ && \
    rm -f packer.zip && \
    # install Terraform
    cd /root/tmp && \
    curl https://releases.hashicorp.com/terraform/0.11.5/terraform_0.11.5_linux_amd64.zip > terraform.zip && \
    unzip terraform.zip && \
    mv terraform /usr/bin/ && \
    rm -f terraform.zip
