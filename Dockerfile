FROM centos:centos7.7.1908
LABEL maintainer="Jiting <jiting@jtcat.com>"

RUN yum -y install \
        make \
        clang \
        gcc \
        gcc-c++ \
        centos-release-scl \
    ; \
    yum-config-manager --enable rhel-server-rhscl-7-rpms; \
    yum install -y llvm-toolset-7.0 devtoolset-8; \
    yum clean all

WORKDIR /app

CMD ["/usr/bin/scl", "enable", "devtoolset-8", "llvm-toolset-7.0", "bash"]
