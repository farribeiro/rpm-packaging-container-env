FROM fedora

RUN dnf groupinstall -y \
        "RPM Development Tools" \
        "C Development Tools and Libraries" \
        && dnf install gcc rpm-build rpm-devel rpmlint make python bash coreutils diffutils patch rpmdevtools
