#!/bin/sh

rsync -a /downloads/rtorrent/#user#/plex/movies/ /downloads/rtorrent/#user#/postprocessing/couchpotato
rsync -a /downloads/rtorrent/#user#/plex/series/ /downloads/rtorrent/#user#/postprocessing/sickrage

find /downloads/rtorrent/#user#/postprocessing/ -mindepth 1 -mtime +2 -delete
