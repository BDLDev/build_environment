FROM archlinux:latest
RUN pacman -Syu --noconfirm --needed base-devel gcc make clang readline && yes | pacman -Scc && rm -fr /var/lib/pacman/sync/*
USER root
ENTRYPOINT [ "/bin/bash" ]