#!/bin/bash

launchctl bootout gui/$UID ~/Library/LaunchAgents/me.p-ti.hourly-chime.plist
rm ~/Library/LaunchAgents/me.p-ti.hourly-chime.plist
