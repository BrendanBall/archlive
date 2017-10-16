FROM archlinux/base

RUN pacman -Syu --noconfirm --noprogressbar archiso vim

WORKDIR /root
RUN mkdir archlive
RUN cp -r /usr/share/archiso/configs/releng/* archlive

ADD packages.x86_64 /root/archlive/package.x86_64