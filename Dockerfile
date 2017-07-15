FROM pritunl/archlinux:latest

RUN echo >> ~/.gnupg/dirmngr_ldapservers.conf && \
    printf "[archstrike]\nServer = https://mirror.archstrike.org/\$arch/\$repo\n" >> /etc/pacman.conf && \
    pacman -Syy && \
    pacman-key --init && \
    dirmngr < /dev/null && \
    pacman-key -r 9D5F1C051D146843CDA4858BDE64825E7CBC0D51 && \
    pacman-key --lsign-key 9D5F1C051D146843CDA4858BDE64825E7CBC0D51 && \
    pacman -S --noconfirm archstrike-keyring archstrike-mirrorlist man-db;

RUN printf "$(head -n -2 /etc/pacman.conf)\n[archstrike]\nInclude = /etc/pacman.d/archstrike-mirrorlist\n" > /etc/pacman.conf && \
    pacman -Syu;

CMD ["/bin/bash"]