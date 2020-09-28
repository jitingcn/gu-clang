# readme

This docker image is used to emulate the University of Glasgow's internal clang compilation environment.  
Not guaranteed to behave exactly the same, Just provide a similar local test environment

Output on uni server:

```bash
  -bash-4.2$ lsb_release -d
  Description: CentOS Linux release 7.7.1908 (Core)

  -bash-4.2$ clang -v
  clang version 3.4.2 (tags/RELEASE_34/dot2-final)
  Target: x86_64-redhat-linux-gnu
  Thread model: posix
  Found candidate GCC installation: /usr/bin/../lib/gcc/x86_64-redhat-linux/4.4.7
  Found candidate GCC installation: /usr/bin/../lib/gcc/x86_64-redhat-linux/4.8.2
  Found candidate GCC installation: /usr/bin/../lib/gcc/x86_64-redhat-linux/4.8.5
  Found candidate GCC installation: /usr/lib/gcc/x86_64-redhat-linux/4.4.7
  Found candidate GCC installation: /usr/lib/gcc/x86_64-redhat-linux/4.8.2
  Found candidate GCC installation: /usr/lib/gcc/x86_64-redhat-linux/4.8.5
  Selected GCC installation: /usr/bin/../lib/gcc/x86_64-redhat-linux/4.8.5

```

## Usage

- build image: `docker build . -t gu-clang`

- init a container in your code dir: `docker run -it -v "$(pwd)":/app gu-clang`
