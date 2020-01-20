FROM archlinux:latest
RUN pacman -Syu --noconfirm --needed base-devel gcc make clang readline python python-pip && yes | pacman -Scc && rm -fr /var/lib/pacman/sync/* && pip install ply
USER root
ENTRYPOINT [ "/bin/bash" ]
