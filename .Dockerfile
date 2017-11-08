FROM jenkins/jenkins:lts
# if we want to install via apt
USER root
RUN apt-get -y update 
RUN apt-get -y install python-pip
RUN pip2 install ansible-lint
# drop back to the regular jenkins user - good practice
USER jenkins
