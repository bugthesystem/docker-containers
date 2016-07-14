FROM centos:7

MAINTAINER @ziyasal

ENV PUPPET_PACKAGE puppetlabs-release-pc1-el-7.noarch.rpm

ADD modules /tmp/modules
ADD manifests /tmp/manifests

RUN yum -y update

RUN rpm -Uvh https://yum.puppetlabs.com/$PUPPET_PACKAGE
RUN yum -y install puppet

RUN /opt/puppetlabs/bin/puppet apply --modulepath=/tmp/modules /tmp/manifests/site.pp

RUN rm -rf /tmp/modules
RUN rm -rf /tmp/manifests