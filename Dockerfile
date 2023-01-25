FROM archlinux:latest
RUN rm -v /etc/pacman.conf
COPY pacman.conf /etc/pacman.conf
RUN pacman -Syu python base-devel base git pacman-contrib jemalloc mimalloc --noconfirm --overwrite '*' && \
	sed -i '/E_ROOT/d' /usr/bin/makepkg
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
