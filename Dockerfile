FROM pritunl/archlinux
MAINTAINER U2FsdGVkX1 <U2FsdGVkX1@gmail.com>

RUN pacman -Syy
RUN pacman -S --noconfirm openssh

ADD sshd_config /etc/ssh/sshd_config
RUN ssh-keygen -A
EXPOSE 22

VOLUME ["/root", "/home"]
ENTRYPOINT ["/usr/bin/sshd", "-D"]

