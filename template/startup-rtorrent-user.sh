#!/bin/bash

set -x

# set rtorrent user and group id

useradd -d /home/#user# -m -s /bin/bash #user#
usermod -aG share #user#
# arrange dirs and configs
mkdir -p /config/rtorrent/#user#/session 
mkdir -p /downloads/rtorrent/#user#/watch
mkdir -p /downloads/rtorrent/#user#/plex/movies
mkdir -p /downloads/rtorrent/#user#/plex/series
mkdir -p /downloads/rtorrent/#user#/postprocessing/sickrage
mkdir -p /downloads/rtorrent/#user#/postprocessing/couchpotato
mkdir -p /downloads/rtorrent/#user#/torrents/misc
mkdir -p /downloads/rtorrent/#user#/torrents/movies
mkdir -p /downloads/rtorrent/#user#/torrents/series
mkdir -p /downloads/rtorrent/#user#/torrents/softwares
mkdir -p /downloads/rtorrent/#user#/torrents/ebooks
mkdir -p /downloads/rtorrent/#user#/torrents/musics
mkdir -p /downloads/rtorrent/#user#/torrents/games

rm -f /downloads/rtorrent/#user#/.rtorrent.rc
ln -s /home/#user#/.rtorrent.rc /downloads/rtorrent/#user#/
chown -R #user#:share /downloads/rtorrent/#user#
chown -R #user#:share /config/rtorrent/#user#
chown -R #user#:share /home/#user#

rm -f /config/rtorrent/#user#/session/rtorrent.lock

# run
su --login --command="TERM=xterm rtorrent" #user#