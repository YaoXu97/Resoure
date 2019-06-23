export PATH="/bin:/sbin:/usr/bin:/usr/sbin"

if [ "$PS1" ]; then
	if [ "`id -u`" -eq 0 ]; then
		export PS1='[\u@\h \W]# '
	else
		export PS1='[\u@\h \W]$ '
	fi
fi

export PAGER='/bin/more'
export EDITOR='/bin/vi'

# Source configuration files from /etc/profile.d
for i in /etc/profile.d/*.sh ; do
	if [ -r "$i" ]; then
		. $i
	fi
done
unset i

if [ -f "/etc/ssh/ssh_host_rsa_key" ]; then
echo ""
else
ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key
ssh-keygen -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key
ssh-keygen -t ed25519 -f /etc/ssh/ssh_host_ed25519_key
fi

export QT_QPA_FONTDIR=/usr/share/wqy
export QTDIR=/usr/lib
export QT_QPA_GENERIC_PLUGINS=tslib:/dev/input/event2
export QT_QPA_PLATFORM_PLUGIN_PATH=/usr/lib/qt/plugins/platforms
export QT_QPA_PLATFORM=linuxfb:fb=/dev/fb0

export TSLIB_ROOT=/usr/lib
export TSLIB_TSDEVICE=/dev/input/event2
export POINTERCAL_FILE=/etc/pointercal
export TSLIB_CALIBFILE=/etc/pointercal
export TSLIB_CONFFILE=/etc/ts.conf
export TSLIB_PLUGINDIR=/usr/lib/ts
export TSLIB_FBDEVICE=/dev/fb0               
export TSLIB_CONSOLEDEVICE=none
