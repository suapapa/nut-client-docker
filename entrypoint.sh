#!/bin/sh
set -e

# 환경 변수를 사용하여 upsmon.conf 생성
cat <<EOF > /etc/nut/upsmon.conf
MONITOR ${UPSNAME}@${HOST} 1 ${USER} ${PASS} slave
MINSUPPLIES 1
POLLFREQ 5
POLLFREQALERT 5
HOSTSYNC 15
DEADTIME 15
POWERDOWNFLAG /etc/nut/killpower
SHUTDOWNCMD "nsenter -t 1 -m -u -i -n -p -- shutdown -h now"
EOF

# 권한 설정 및 디렉토리 준비
mkdir -p /var/run/nut
chown root:root /var/run/nut
chmod 600 /etc/nut/upsmon.conf

# upsmon 실행
exec /usr/sbin/upsmon -u root -D
