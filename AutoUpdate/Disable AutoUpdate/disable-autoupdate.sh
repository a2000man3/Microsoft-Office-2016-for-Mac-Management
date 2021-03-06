#!/bin/sh

: '
Part of Microsoft Office 2016 for Mac Management
https://github.com/talkingmoose/Microsoft-Office-2016-for-Mac-Management
William Smith, bill@talkingmoose.net

Purpose: Command to set the Microsoft AutoUpdate to Manual instead of Automatic

This script modifies /Library to affect all users.

INSTRUCTIONS:

1) Run this script or command from Terminal or any application such as Apple Remote Desktop:

sudo sh /path/to/disable-autoupdate.sh
'

defaults write "/Library/Preferences/com.microsoft.autoupdate2.plist" HowToCheck -string Manual

defaults write "/Library/Preferences/com.microsoft.autoupdate2.plist" LastUpdate -date '2001-01-01T00:00:00Z'

exit 0