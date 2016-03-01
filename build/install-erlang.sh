#!/bin/sh
set -e

echo "Installing Erlang ..."

ERLANG=erlang
OTP_VERSION=18.2
OTP_PACKAGE=otp_src_$OTP_VERSION
OTP_ARCHIVE=$OTP_PACKAGE.tar.gz
OTP_DOWNLOAD=http://www.erlang.org/download/$OTP_ARCHIVE

mkdir -p $ERLANG
cd $ERLANG
  curl -sSLO $OTP_DOWNLOAD
  tar xfz $OTP_ARCHIVE

cd $OTP_PACKAGE
  export ERL_TOP=`pwd`
  ./configure --disable-hipe
  make
  make install

echo "- done."
