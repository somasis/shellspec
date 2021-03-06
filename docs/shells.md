# Shells

## Tested shells and versions

* **The version with a dash does not work.**
* **The version in italic may work but it is not supported due to a bug.**
* The shell included with the supported OS (the platform in bold) is the main
  supported shell.
* The old shell has been tested, but support may be discontinued.
* Supported busybox shell is `ash` only. `hush` has many missing features and
  bugs.
* Bourne shell is not supported.

### Packages

* These are tested by [Travis CI][travis], [Cirrus CI][cirrus] and Docker (`contrib/test_in_docker.sh`).

[travis]: https://travis-ci.org/shellspec/shellspec
[cirrus]: https://cirrus-ci.com/github/shellspec/shellspec

#### Alpine / BusyBox / OpenWrt (LEDE)

Default shell: `busybox ash`

| Platform            | bash   | busybox  | dash | loksh | mksh | yash | zsh |
| ------------------- | ------ | -------- | ---- | ----- | ---- | ---- | --- |
| **Alpine 3.11.3**   |        | 1.31.1   |      | 6.6   |      | -    |     |
| Alpine edge         | 5.0.11 | 1.31.1   |      | 6.6   |      |      |     |
| **BusyBox 1.31.1**  | -      | 1.31.1   | -    | -     | -    | -    | -   |
| LEDE 17.01.7        |        | 1.25.1   | -    | -     |      | -    |     |
| OpenWrt 10.03.1     |        | _1.15.3_ |      | -     |      | -    | -   |
| OpenWrt 12.09       |        | _1.19.4_ |      | -     |      | -    | -   |
| OpenWrt 14.07       |        | 1.22.1   |      | -     |      | -    |     |
| OpenWrt 15.05.1     |        | 1.23.2   | -    | -     |      | -    |     |
| **OpenWrt 18.06.7** |        | 1.28.4   | -    | -     |      | -    |     |
| **OpenWrt 19.07.1** |        | 1.30.1   | -    | -     |      | -    |     |

#### CentOS / Fedora

Default shell: `bash`

| Platform            | bash   | busybox | dash | ksh | mksh | yash | zsh |
| ------------------- | ------ | ------- | ---- | --- | ---- | ---- | --- |
| **CentOS 6.10**     | 4.1.2  |         |      |     |      | -    |     |
| **CentOS 7.7.1908** | 4.2.46 | -       | -    |     |      | -    |     |
| **CentOS 8.1.1911** | 4.4.19 | -       | -    |     |      | -    |     |
| fedora 20           | 4.2.53 |         |      |     |      |      |     |
| fedora 21           | 4.3.30 |         |      |     |      |      |     |
| fedora 24           | 4.3.42 |         |      |     |      |      |     |
| fedora 25           | 4.3.43 |         |      |     |      |      |     |
| fedora 26           | 4.4.12 |         |      |     |      |      |     |
| **fedora 29**       | 4.4.23 |         |      |     |      |      |     |
| **fedora 31**       | 5.0.7  |         |      |     |      |      |     |

* Testing bash 4.1.2- in POSIX mode only.

#### Debian / Ubuntu

Default shell: `dash` or `bash` (until debian 5.0)

| Platform         | bash   | busybox    | dash          | ksh             | mksh | pdksh    | posh     | yash | zsh    |
| ---------------- | ------ | ---------- | ------------- | --------------- | ---- | -------- | -------- | ---- | ------ |
| Debian 2.2r7     | 2.03   | -          | -             | -               | -    | _5.2.14_ | -        | -    | 3.1.9  |
| Debian 3.0r6     | 2.05a  | ~~0.60.2~~ | ~~ash 0.3.8~~ | -               | -    | 5.2.14   | -        | -    | 4.0.4  |
| Debian 3.1r8     | 2.05b  | ~~0.60.5~~ | 0.5.2         | _93q_           | -    | 5.2.14   | 0.3.14   | -    | 4.2.5  |
| Debian 4.0r9     | 3.1.17 | _1.1.3_    | 0.5.3         | _93r_           | R28  | 5.2.14   | 0.5.4    | -    | 4.3.2  |
| Debian 5.0.10    | 3.2.39 | 1.10.2     | 0.5.4         | 93s+ 2008-01-31 | R35  | 5.2.14   | 0.6.13   | -    | 4.3.6  |
| Debian 6.0.10    | 4.1.5  | 1.17.1     | 0.5.5.1       | 93s+ 2008-01-31 | R39  | 5.2.14   | 0.8.5    | -    | 4.3.10 |
| Debian 7.11      | 4.2.37 | 1.20.0     | 0.5.7         | 93u+ 2012-02-29 | R40  | -        | _0.10.2_ | 2.30 | 4.3.17 |
| **Debian 8.11**  | 4.3.30 | 1.22.0     | 0.5.7         | 93u+ 2012-08-01 | R50d | -        | 0.12.3   | 2.36 | 5.0.7  |
| **Debian 9.11**  | 4.4.12 | 1.22.0     | 0.5.8         | 93u+ 2012-08-01 | R54  | -        | 0.12.6   | 2.43 | 5.3.1  |
| **Debian 10.2**  | 5.0.3  | 1.30.1     | 0.5.10.2      | 93u+ 2012-08-01 | R57  | -        | 0.13.2   | 2.48 | 5.7.1  |
| Debian bullseye  |        |            |               | 2020.0.0        |      | -        |          | 2.49 |        |
| Ubuntu 12.04     | 4.2.25 | 1.18.5     | 0.5.7         | 93u 2011-02-08  | R40  | -        | _0.10_   | 2.29 | 4.3.17 |
| **Ubuntu 14.04** | 4.3.11 | 1.21.0     | 0.5.7         | 93u+ 2012-08-01 | R46  | -        | 0.12.3   | 2.35 | 5.0.2  |
| **Ubuntu 16.04** | 4.3.48 | 1.22.0     | 0.5.8         | 93u+ 2012-08-01 | R52c | -        | 0.12.6   | 2.39 | 5.1.1  |
| **Ubuntu 18.04** | 4.4.20 | 1.27.2     | 0.5.8         | 93u+ 2012-08-01 | R56c | -        | 0.13.1   | 2.46 | 5.4.2  |
| **Ubuntu 19.04** |        |            |               |                 |      | -        |          |      | 5.5.1  |

* Using [lpenz/docker-debian-releases](https://github.com/lpenz/docker-debian-releases/) for older (7.11 and before) Debian docker images.
* Testing bash 2.03-3.2.39 in both POSIX and non-POSIX mode. bash 4.1.5- is non-POSIX mode only.

#### FreeBSD

Default shell: `ash`

| Platform         | ash     | bash   | dash     | ksh             | mksh | oksh     | pdksh  | zsh   |
| ---------------- | ------- | ------ | -------- | --------------- | ---- | -------- | ------ | ----- |
| FreeBSD 10.4     | unknown | 4.4.23 | 0.5.10.2 | 93u+ 2012-08-01 | R56c | 20181009 | 5.2.14 | 5.6.2 |
| **FreeBSD 11.3** | unknown | 5.0.11 | 0.5.10.2 | 2020.0.0        | R57  | 6.6      | 5.2.14 | 5.7.1 |
| **FreeBSD 12.1** | unknown | 5.0.11 | 0.5.10.2 | 2020.0.0        | R57  | 6.6      | 5.2.14 | 5.7.1 |

#### macOS

Default shell: `bash`

| Platform               | sh          | bash   | dash     | ksh             | mksh | posh       | yash | zsh   |
| ---------------------- | ----------- | ------ | -------- | --------------- | ---- | ---------- | ---- | ----- |
| macOS 10.10            | bash 3.2.57 | 3.2.57 | -        | 93u+ 2012-08-01 | -    | -          | -    | 5.0.5 |
| macOS 10.11            | bash 3.2.57 | 3.2.57 | -        | 93u+ 2012-08-01 | -    | -          | -    | 5.0.8 |
| macOS 10.12            | bash 3.2.57 | 3.2.57 | -        | 93u+ 2012-08-01 | -    | -          | -    | 5.2   |
| **macOS 10.13**        | bash 3.2.57 | 3.2.57 | -        | 93u+ 2012-08-01 | -    | -          | -    | 5.3   |
| **macOS 10.14**        | bash 3.2.57 | 3.2.57 | -        | 93u+ 2012-08-01 | -    | -          | -    | 5.3   |
| **macOS 10.14 (brew)** | -           | 5.0.11 | 0.5.10.2 | 93u+ 2012-08-01 | R57  | ~~0.13.2~~ | 2.49 | 5.7.1 |

* Supports the latest three versions.
* `posh` on macOS 10.14 (brew) is broken?

#### Windows

Default shell: `bash`

| Platform                           | bash   | busybox | dash     | mksh | posh   | zsh   |
| ---------------------------------- | ------ | ------- | -------- | ---- | ------ | ----- |
| **Windows Server 2019 (Git Bash)** | 4.4.23 | -       | unknown  | -    | -      | -     |
| **Windows Server 2019 (msys)**     | 4.4.23 | 1.23.2  | 0.5.10.2 | R57  | -      | 5.7.1 |
| **Windows Server 2019 (cygwin)**   | 4.4.12 | 1.23.2  | 0.5.9.1  | R56c | 0.13.2 | 5.5.1 |

### Self build

These are tested by Docker (`contrib/test_in_docker.sh`).

| Platform                             | bosh / pbosh |
| ------------------------------------ | ------------ |
| Debian buster + Schily AN-2018-10-30 | 2018/10/07   |
| Debian buster + Schily AN-2019-03-11 | 2019/02/05   |
| Debian buster + Schily AN-2019-09-22 | 2019/08/25   |
| Debian buster + Schily AN-2019-10-07 | 2019/09/27   |
| Debian buster + Schily AN-2019-12-05 | 2019/10/25   |

* [Schily Bourne Shell][bosh] (`bosh`, `pbosh`) packages are available on [The NetBSD package collection][pkgsrc].
* Versions before 2018/10/07 does not work.

[bosh]: http://schilytools.sourceforge.net/bosh.html
[pkgsrc]: http://pkgsrc.se/shells/bosh

### Manual test

This is not continuous test, it may break sometimes...

| Platform       | bash   | ksh88                            | ksh93                     | Bourne Shell          |
| -------------- | ------ | -------------------------------- | ------------------------- | --------------------- |
| **Solaris 10** | 3.2.51 | M-11/16/88i (/usr/bin/ksh)       | -                         | ~~/bin/sh~~           |
| **Solaris 11** | 4.4.19 | M-11/16/88i (/usr/sunos/bin/ksh) | 93u+ 2012-08-01 (/bin/sh) | ~~/usr/sunos/bin/sh~~ |

## Confirmation for bug

`contrib/bugs.sh` detects shell bugs and problems.

Usage: `contrib/bugs.sh`

## Built-in commands

`contrib/builtins.sh` is a script for listing built-in commands.

Usage: `contrib/builtins.sh`

### List

* This is not complete list.
* It may not be implemented in older versions.
* It may be implemented in newer versions.
* The options implemented may be different.
* Commands in bold are implemented in all shells.
* zsh has many builtin command begin with "comp" and "z".

|               | dash  | bash | zsh | ksh | mksh | posh | yash | busybox | bosh | pbosh |
| ------------- | ----- | ---- | --- | --- | ---- | ---- | ---- | ------- | ---- | ----- |
| **.**         | o     | o    | o   | o   | o    | o    | o    | o       | o    | o     |
| **:**         | o     | o    | o   | o   | o    | o    | o    | o       | o    | o     |
| **[**         | o     | o    | o   | o   | o    | o    | o    | o       | o    | o     |
| alias         | o     | o    | o   | o   | o    | -    | o    | o       | o    | o     |
| array         | -     | -    | -   | -   | -    | -    | o    | -       | -    | -     |
| autoload      | -     | -    | o   | -   | -    | -    | -    | -       | -    | -     |
| bg            | o     | o    | o   | o   | o    | -    | o    | o       | o    | o     |
| bind          | -     | o    | -   | -   | o    | -    | -    | -       | -    | -     |
| bindkey       | -     | -    | o   | -   | -    | -    | o    | -       | -    | -     |
| **break**     | o     | o    | o   | o   | o    | o    | o    | o       | o    | o     |
| builtin       | -     | o    | o   | o   | o    | o    | -    | -       | o    | -     |
| bye           | -     | -    | o   | -   | -    | -    | -    | -       | -    | -     |
| caller        | -     | o    | -   | -   | -    | -    | -    | -       | -    | -     |
| cap           | -     | -    | o   | -   | -    | -    | -    | -       | -    | -     |
| cat           | -     | -    | -   | -   | o    | -    | -    | -       | -    | -     |
| **cd**        | o     | o    | o   | o   | o    | o    | o    | o       | o    | o     |
| chdir         | o     | -    | o   | -   | o    | -    | -    | o       | o    | o     |
| clone         | -     | -    | o   | -   | -    | -    | -    | -       | -    | -     |
| **command**   | o     | o    | o   | o   | o    | o    | o    | o       | o    | o     |
| compgen       | -     | o    | -   | -   | -    | -    | -    | -       | -    | -     |
| ------------- | dash  | bash | zsh | ksh | mksh | posh | yash | busybox | bosh | pbosh |
| complete      | -     | o    | -   | -   | -    | -    | o    | -       | -    | -     |
| compopt       | -     | o    | -   | -   | -    | -    | -    | -       | -    | -     |
| **continue**  | o     | o    | o   | o   | o    | o    | o    | o       | o    | o     |
| declare       | -     | o    | o   | -   | -    | -    | -    | -       | -    | -     |
| dirs          | -     | o    | o   | -   | -    | -    | o    | -       | o    | -     |
| disable       | -     | -    | o   | -   | -    | -    | -    | -       | -    | -     |
| disown        | -     | o    | o   | o   | -    | -    | o    | -       | -    | -     |
| **echo**      | o     | o    | o   | o   | o    | o    | o    | o       | o    | o     |
| echotc        | -     | -    | o   | -   | -    | -    | -    | -       | -    | -     |
| echoti        | -     | -    | o   | -   | -    | -    | -    | -       | -    | -     |
| emulate       | -     | -    | o   | -   | -    | -    | -    | -       | -    | -     |
| enable        | -     | o    | o   | -   | -    | -    | -    | -       | -    | -     |
| enum          | -     | -    | -   | o   | -    | -    | -    | -       | -    | -     |
| **eval**      | o     | o    | o   | o   | o    | o    | o    | o       | o    | o     |
| **exec**      | o     | o    | o   | o   | o    | o    | o    | o       | o    | o     |
| **exit**      | o     | o    | o   | o   | o    | o    | o    | o       | o    | o     |
| **export**    | o     | o    | o   | o   | o    | o    | o    | o       | o    | o     |
| **false**     | o     | o    | o   | o   | o    | o    | o    | o       | o    | o     |
| fc            | ~~o~~ | o    | o   | -   | o    | -    | o    | -       | o    | o     |
| fg            | o     | o    | o   | o   | o    | -    | o    | o       | o    | o     |
| ------------- | dash  | bash | zsh | ksh | mksh | posh | yash | busybox | bosh | pbosh |
| float         | -     | -    | o   | -   | -    | -    | -    | -       | -    | -     |
| functions     | -     | -    | o   | -   | -    | -    | -    | -       | -    | -     |
| getcap        | -     | -    | o   | -   | -    | -    | -    | -       | -    | -     |
| getconf       | -     | -    | -   | o   | -    | -    | -    | -       | -    | -     |
| getln         | -     | -    | o   | -   | -    | -    | -    | -       | -    | -     |
| getops        | o     | o    | o   | o   | o    | o    | o    | -       | -    | -     |
| global        | -     | -    | -   | -   | o    | -    | -    | -       | -    | -     |
| hash          | o     | o    | o   | -   | o    | -    | o    | o       | o    | o     |
| help          | -     | o    | -   | -   | -    | -    | o    | o       | -    | -     |
| hist          | -     | -    | -   | o   | -    | -    | -    | -       | -    | -     |
| history       | -     | o    | o   | -   | -    | -    | o    | o       | o    | o     |
| integer       | -     | -    | o   | -   | -    | -    | -    | -       | -    | -     |
| jobs          | o     | o    | o   | o   | o    | -    | o    | o       | o    | o     |
| **kill**      | o     | o    | o   | o   | o    | o    | o    | o       | o    | o     |
| let           | ~~o~~ | o    | o   | o   | o    | -    | -    | o       | -    | -     |
| limit         | -     | -    | o   | -   | -    | -    | -    | -       | o    | -     |
| local         | o     | o    | o   | -   | -    | o    | -    | o       | o    | -     |
| log           | -     | -    | o   | -   | -    | -    | -    | -       | -    | -     |
| logout        | -     | o    | o   | -   | -    | -    | -    | -       | -    | -     |
| mapfile       | -     | o    | -   | -   | -    | -    | -    | -       | -    | -     |
| ------------- | dash  | bash | zsh | ksh | mksh | posh | yash | busybox | bosh | pbosh |
| mknod         | -     | -    | -   | -   | o    | -    | -    | -       | -    | -     |
| newgrp        | -     | -    | -   | o   | -    | -    | -    | -       | o    | o     |
| noglob        | -     | -    | o   | -   | -    | -    | -    | -       | -    | -     |
| popd          | -     | o    | o   | -   | -    | -    | o    | -       | o    | -     |
| print         | -     | -    | o   | o   | o    | -    | -    | -       | -    | -     |
| printf        | o     | o    | o   | o   | -    | -    | o    | o       | o    | o     |
| pushed        | -     | o    | o   | -   | -    | -    | o    | -       | -    | -     |
| pushln        | -     | -    | o   | -   | -    | -    | -    | -       | -    | -     |
| **pwd**       | o     | o    | o   | o   | o    | o    | o    | o       | o    | o     |
| r             | -     | -    | o   | -   | -    | -    | -    | -       | -    | -     |
| **read**      | o     | o    | o   | o   | o    | o    | o    | o       | o    | o     |
| readarray     | -     | o    | -   | -   | -    | -    | -    | -       | -    | -     |
| **readonly**  | o     | o    | o   | o   | o    | o    | o    | o       | o    | o     |
| realpath      | -     | -    | -   | -   | o    | -    | -    | -       | -    | -     |
| rehash        | -     | -    | o   | -   | -    | -    | -    | -       | -    | -     |
| rename        | -     | -    | -   | -   | o    | -    | -    | -       | -    | -     |
| **return**    | o     | o    | o   | o   | o    | o    | o    | o       | o    | o     |
| sched         | -     | -    | o   | -   | -    | -    | -    | -       | -    | -     |
| **set**       | o     | o    | o   | o   | o    | o    | o    | o       | o    | o     |
| setcap        | -     | -    | o   | -   | -    | -    | -    | -       | -    | -     |
| ------------- | dash  | bash | zsh | ksh | mksh | posh | yash | busybox | bosh | pbosh |
| setopt        | -     | -    | o   | -   | -    | -    | -    | -       | -    | -     |
| **shift**     | o     | o    | o   | o   | o    | o    | o    | o       | o    | o     |
| shopt         | -     | o    | -   | -   | -    | -    | -    | -       | -    | -     |
| sleep         | -     | -    | -   | o   | o    | -    | -    | -       | -    | -     |
| source        | -     | o    | o   | -   | o    | -    | -    | o       | -    | -     |
| stat          | -     | -    | o   | -   | -    | -    | -    | -       | -    | -     |
| suspend       | -     | o    | o   | -   | o    | -    | o    | -       | o    | o     |
| **test**      | o     | o    | o   | o   | o    | o    | o    | o       | o    | o     |
| time          | -     | o    | o   | o   | o    | -    | -    | -       | o    | -     |
| **times**     | o     | o    | o   | o   | o    | o    | o    | o       | o    | o     |
| **trap**      | o     | o    | o   | o   | o    | o    | o    | o       | o    | o     |
| **true**      | o     | o    | o   | o   | o    | o    | o    | o       | o    | o     |
| ttyctl        | -     | -    | o   | -   | -    | -    | -    | -       | -    | -     |
| type          | o     | o    | o   | o   | o    | -    | o    | o       | -    | -     |
| typeset       | -     | o    | o   | o   | o    | -    | o    | -       | -    | -     |
| ulimit        | o     | o    | o   | o   | o    | -    | o    | o       | o    | o     |
| **umask**     | o     | o    | o   | o   | o    | o    | o    | o       | o    | o     |
| unalias       | o     | o    | o   | o   | o    | -    | o    | o       | o    | o     |
| unfunction    | -     | -    | o   | -   | -    | -    | -    | -       | -    | -     |
| unhash        | -     | -    | o   | -   | -    | -    | -    | -       | -    | -     |
| ------------- | dash  | bash | zsh | ksh | mksh | posh | yash | busybox | bosh | pbosh |
| unlimit       | -     | -    | o   | -   | -    | -    | -    | -       | -    | -     |
| **unset**     | o     | o    | o   | o   | o    | o    | o    | o       | o    | o     |
| unsetopt      | -     | -    | o   | -   | -    | -    | -    | -       | -    | -     |
| vared         | -     | -    | o   | -   | -    | -    | -    | -       | -    | -     |
| **wait**      | o     | o    | o   | o   | o    | o    | o    | o       | o    | o     |
| whence        | -     | -    | o   | o   | o    | -    | -    | -       | -    | -     |
| where         | -     | -    | o   | -   | -    | -    | -    | -       | -    | -     |
| which         | -     | -    | o   | -   | -    | -    | -    | -       | -    | -     |
