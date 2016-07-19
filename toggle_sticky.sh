#!/bin/bash
var=$(dconf read /org/compiz/profiles/unity/plugins/unityshell/launcher-capture-mouse)
if [ "$var" = "true" ]; then
	dconf write /org/compiz/profiles/unity/plugins/unityshell/launcher-capture-mouse false
else
	dconf write /org/compiz/profiles/unity/plugins/unityshell/launcher-capture-mouse true
fi
notify-send "Mouse sticky edges toggled."
