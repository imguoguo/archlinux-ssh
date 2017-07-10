FROM archimg/base:full
MAINTAINER U2FsdGVkX1 <U2FsdGVkX1@gmail.com>

RUN pacman -Syy
RUN pacman -S --noconfirm openssh

RUN sed -i 's/#Port 22/Port 22/' /etc/ssh/sshd_config
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config
RUN sed -i 's/#PermitEmptyPasswords no/PermitEmptyPasswords yes/' /etc/ssh/sshd_config
RUN ssh-keygen -A
EXPOSE 22

VOLUME ["/root", "/home"]
ENTRYPOINT ["/usr/bin/sshd", "-D"]
