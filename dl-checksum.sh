#!/usr/bin/env sh
VER=1.14.2
DIR=~/Downloads
MIRROR=https://github.com/fluxcd/flux/releases/download/${VER}

dl()
{
    local os=$1
    local arch=$2
    local platform=${os}_${arch}
    local url=$MIRROR/fluxctl_${platform}
    local lfile=$DIR/fluxctl_${platform}_${VER}

    if [ ! -e $lfile ];
    then
        wget -q -O $lfile $url
    fi

    printf "    # %s\n" $url
    printf "    %s: sha256:%s\n" $platform `sha256sum $lfile | awk '{print $1}'`
}

printf "  '%s':\n" $VER
dl darwin amd64
dl linux amd64
dl linux arm
dl linux arm64
dl windows amd64


