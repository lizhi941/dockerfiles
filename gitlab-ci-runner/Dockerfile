# gitlab-ci-runner

FROM        base/devel
MAINTAINER  nekroze "nekroze@eturnilnetwork.com"


# install deps

RUN  packer-color -Syu

RUN  packer-color -S --noconfirm --noedit ruby
RUN  packer-color -S --noconfirm --noedit ruby-bundler wget curl libxml2 libxslt
RUN  packer-color -S --noconfirm --noedit readline openssl icu postfix libyaml
RUN  packer-color -S --noconfirm --noedit git openssh zlib

## install gitlab-ci-runner into /gcr

RUN  git clone https://github.com/Ensequence/gitlab-ci-runner.git gcr && cd gcr
RUN  cd gcr && bundle install 


# setup ssh

## sub-optimal... it seems that ssh-keygen doesn't honor $HOME
## mkdir for .ssh keys in the base director
RUN  mkdir /.ssh
## modify ssh config to use the appropriate key 
RUN  echo "IdentityFile /.ssh/id_rsa" >> /etc/ssh/ssh_config

## the default command to be run when this docker image is started
CMD  /gcr/bin/runner
