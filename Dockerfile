FROM centos:centos7.7.1908
LABEL maintainer="Jiting <jiting@jtcat.com>"

RUN yum -y install \
        make \
        clang \
        gcc \
        gcc-c++ \
    ; \
    yum clean all; \
    clang -v

WORKDIR /app

CMD ["/usr/bin/bash"]
