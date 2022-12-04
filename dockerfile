# Pull base image.
FROM ubuntu:20.04

##Update, Install Unzip and wget and vim
RUN apt-get update -y && apt-get install unzip -y && apt-get install wget -y && apt-get install vim -y

################################
# Install Terraform
################################

# Download terraform for linux
RUN wget https://releases.hashicorp.com/terraform/1.2.8/terraform_1.2.8_linux_amd64.zip

# Unzip
RUN unzip terraform_1.2.8_linux_amd64.zip

# Move to local bin
RUN mv terraform /usr/local/bin/

# Check that it's installed
RUN terraform --version