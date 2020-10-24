#!/bin/bash
release_version=$(cat /etc/issue)
macos="Darwin"
centos="Centos"
ubuntu="Ubuntu"
armbian="Armbian"


init_darwin() {
    bash ./scripts/init_darwin.sh
}

init_centos() {
    bash ./scripts/init_centos.sh
}

init_ubuntu() {
    bash ./scripts/init_ubuntu.sh
}

init_armbian() {
    bash ./scripts/init_armbian.sh
}

if [[ $release_version =~ $macos ]];then
    init_darwin
elif [[ $release_version =~ $centos ]];then
    init_centos
elif [[ $release_version =~ $ubuntu ]];then
    init_ubuntu
elif [[ $release_version =~ $Armbian ]];then
    init_armbian
else
    echo not support system: $release_version
fi
