#!/bin/sh

. /etc/profile

#systemd-run /storage/.kodi/addons/emulator.tools.retroarch/bin/retroarch.start "$@"
systemd-run /storage/emulators/scripts/gamestarter.start "$@"