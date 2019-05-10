#!/bin/bash
##################################
#
# Install Java, Jenkins and Packer
#
##################################
sudo yum update -y
sudo yum install wget unzip zip -y
sudo yum install java-1.8.0-openjdk -y
sudo wget https://bintray.com/jfrog/artifactory-rpms/download_file?file_path=jfrog-artifactory-oss-6.10.0.rpm -O jfrog-artifactory-oss-6.10.0.rpm
sudo yum install jfrog-artifactory-oss-6.10.0.rpm
echo 'export ARTIFACTORY_HOME=/opt/jfrog/artifactory' | sudo tee -a /etc/profile
# Install MariaDB for Artifactory
sudo yum install -y mariadb-server
sudo systemctl start mariadb.service
sudo systemctl enable mariadb.service
# Install Ansible
#Install Ansible
sudo rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo yum install ansible -y



