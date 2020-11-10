FROM centos:centos7.7.1908
LABEL maintainer="Jiting <jiting@jtcat.com>"

COPY clang9.setup /usr/local/bin/clang9.setup

RUN set -eux; \
    yum -y install \
        make \
        clang \
        gcc \
        gcc-c++ \
        centos-release-scl \
    ; \
    yum-config-manager --enable rhel-server-rhscl-7-rpms; \
    yum install -y llvm-toolset-7.0 devtoolset-8; \
    yum clean all; \
    \
    cd /usr/local/; \
    curl -o clang_llvm-9.0.0.tar.xz 'https://share.jtcat.com/clang%2bllvm-9.0.0-x86_64-linux-sles11.3.tar.xz'; \
    tar -xf clang_llvm-9.0.0.tar.xz; \
    rm clang_llvm-9.0.0.tar.xz; \
    chmod +x /usr/local/bin/clang9.setup

WORKDIR /app

CMD ["/usr/bin/scl", "enable", "devtoolset-8", "llvm-toolset-7.0", "bash"]
