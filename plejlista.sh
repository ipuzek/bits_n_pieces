MYDATE=`date +%Y%m%d%H%M`
PLAYLIST=${MYDATE}.m3u

# quasi-magicline
echo "#EXTM3U" > $PLAYLIST
# season to taste
ls *.mp3 | sort -V >> $PLAYLIST
