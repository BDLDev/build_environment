FROM archlinux:latest
RUN pacman -Syu --noconfirm --needed base-devel gcc make clang-format readline && yes | pacman -Scc && rm -fr /var/lib/pacman/sync/*