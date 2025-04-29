#/usr/bin/env bash

work_dir="work"


arch_chroot() {
    arch-chroot "${work_dir}/x86_64/airootfs" /bin/bash -c "${1}"
}

do_merge() {

arch_chroot "$(cat << EOF
pwd
uname --all
EOF
)"
}

do_merge
