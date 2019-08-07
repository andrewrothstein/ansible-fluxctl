#!/usr/bin/env sh
VER=1.13.3
DIR=~/Downloads
MIRROR=https://github.com/fluxcd/flux/releases/download/${VER}

dl()
{
    OS=$1
    ARCH=$2
    PLATFORM=${OS}_${ARCH}
    URL=$MIRROR/fluxctl_${PLATFORM}
    LFILE=$DIR/fluxctl_${PLATFORM}_${VER}

    if [ ! -e $LFILE ];
    then
        wget -q -O $LFILE $URL
    fi

    printf "    # %s\n" $URL
    printf "    %s: sha256:%s\n" $PLATFORM `sha256sum $LFILE | awk '{print $1}'`
}

printf "  '%s':\n" $VER
dl darwin amd64
dl linux amd64
dl linux arm
dl linux arm64
dl windows amd64


