#!/bin/bash

steamcmd_dir="/root/steamcmd"
install_dir="/root/dontstarvetogether_dedicated_server"

function fail()
{
	echo Error: "$@" >&2
	exit 1
}

function check_for_file()
{
	if [ ! -e "$1" ]; then
		fail "Missing file: $1"
	fi
}

cd "$steamcmd_dir" || fail "Missing $steamcmd_dir directory!"

check_for_file "steamcmd.sh"

./steamcmd.sh +force_install_dir "$install_dir" +login anonymous +app_update 343050 validate +quit

check_for_file "$install_dir/bin64"