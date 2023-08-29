#!/bin/bash
if ! command -v shuf &> /dev/null
then
	echo "Please install shuf; e.g. brew install shuf"
	exit
fi
if ! command -v envsubst &> /dev/null
then
	echo "You need envsubst, probably: brew install gettext"
	exit
fi

shuf=`which shuf` audio_file=\$audio_file envsubst < chime.template > chime.sh
chmod a+x chime.sh

dir=`pwd` envsubst < plist.template > me.p-ti.hourly-chime.plist

cp me.p-ti.hourly-chime.plist ~/Library/LaunchAgents/

launchctl bootstrap gui/$UID ~/Library/LaunchAgents/me.p-ti.hourly-chime.plist
