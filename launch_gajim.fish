#!/usr/bin/env nix-shell
#! nix-shell -i fish 

source env/bin/activate.fish

set dbus_session_conf (path dirname (path dirname (which dbus-run-session)))/share/dbus-1/session.conf

dtach -n /tmp/gajim-session dbus-run-session --config-file=$dbus_session_conf python3 gajim/launch.py

#nohup ./gajim/launch.py &
#dtach ./gajim/launch.py
