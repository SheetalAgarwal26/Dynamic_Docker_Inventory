FROM centos:latest
RUN yum install net-tools -y
RUN yum install openssh-server -y
RUN yum install openssh-clients -y
RUN yum install passwd -y
RUN echo redhat | passwd root --stdin
RUN ssh-keygen -A
CMD ["/usr/sbin/sshd", "-D"] && /bin/bash
