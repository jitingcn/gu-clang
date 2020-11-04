# readme

This docker image is used to emulate the University of Glasgow's internal clang compilation environment.  
Not guaranteed to behave exactly the same, Just provide a similar local test environment

Output on uni server:

```bash
  bash-4.2$ lsb_release -d
  Description: CentOS Linux release 7.7.1908 (Core)
```

```bash
  bash-4.2$ scl enable devtoolset-8 llvm-toolset-7.0 bash
```

```bash
  bash-4.2$ clang -v
  clang version 7.0.1 (tags/RELEASE_701/final)
  Target: x86_64-unknown-linux-gnu
  Thread model: posix
  InstalledDir: /opt/rh/llvm-toolset-7.0/root/usr/bin
  Found candidate GCC installation: /opt/rh/devtoolset-7/root/usr/lib/gcc/x86_64-redhat-linux/7
  Found candidate GCC installation: /opt/rh/devtoolset-8/root/usr/lib/gcc/x86_64-redhat-linux/8
  Found candidate GCC installation: /usr/lib/gcc/x86_64-redhat-linux/4.4.7
  Found candidate GCC installation: /usr/lib/gcc/x86_64-redhat-linux/4.8.2
  Found candidate GCC installation: /usr/lib/gcc/x86_64-redhat-linux/4.8.5
  Selected GCC installation: /opt/rh/devtoolset-8/root/usr/lib/gcc/x86_64-redhat-linux/8
  Candidate multilib: .;@m64
  Candidate multilib: 32;@m32
  Selected multilib: .;@m64
```

## Usage

- build image (from source if you need): `docker build . -t jiting/gu-clang`

- pull image: `docker pull jiting/gu-clang`

- init a container in your code dir: `docker run -it --rm -v "$(pwd)":/app jiting/gu-clang`
