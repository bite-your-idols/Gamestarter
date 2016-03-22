#!/bin/sh
. /etc/profile

systemd-run /storage/emulators/scripts/gamestarter.start "$@"