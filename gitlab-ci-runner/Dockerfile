# gitlab-ci-runner

FROM        base/devel
MAINTAINER  nekroze "nekroze@eturnilnetwork.com"


# install deps

RUN  pacman-key --refresh-keys
RUN  yaourt -Syu --noconfirm

RUN  yaourt -S --noconfirm ruby
RUN  yaourt -S --noconfirm ruby-bundler wget curl libxml2 libxslt
RUN  yaourt -S --noconfirm readline openssl icu postfix libyaml
RUN  yaourt -S --noconfirm git openssh zlib

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
