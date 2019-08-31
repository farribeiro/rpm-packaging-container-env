FROM fedora

LABEL maintainer "Fabio Rodrigues Ribeiro <farribeiro@gmail.com>"

ENV U=fribeiro

ENV GUID=1000

RUN adduser -m -u ${GUID} -U ${U}

RUN dnf groupinstall -y \
        "RPM Development Tools" \
        "C Development Tools and Libraries" \
        && dnf install -y gcc rpm-build rpm-devel rpmlint make python bash coreutils diffutils patch rpmdevtools git fedpkg

USER $(U)

VOLUME /home/$(U)
