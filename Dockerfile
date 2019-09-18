FROM fedora

LABEL maintainer "Fabio Rodrigues Ribeiro <farribeiro@gmail.com>"

RUN dnf groupinstall -y \
        "RPM Development Tools" \
        "C Development Tools and Libraries" \
        && dnf install -y gcc rpm-build rpm-devel rpmlint make python bash coreutils diffutils patch rpmdevtools git fedpkg \
        && dnf clean all
