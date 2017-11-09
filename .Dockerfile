ROM jenkins/jenkins:lts
# if we want to install via apt
USER root
RUN apt-get -y update
# install python installer
RUN apt-get -y install python-pip
RUN apt-get -y install libssl-dev
#ansible#install ansible
RUN pip install ansible 
# install asnible-lint
RUN pip2 install ansible-lint
# install Molecule
RUN pip2 install molecule
# install yaml linter
RUN pip install yamllint
# drop back to the regular jenkins user - good practice
USER jenkins
