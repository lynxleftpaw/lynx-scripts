BKUP_DEST="/your/target/location"

# full system archive, ignore extra partitions, include sym/hard links, exclude various caches, show progress / transfer speed
rsync -aAXHSx --info=progress2 --delete --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found","/home/*/.gvfs","/home/*/.cache/mozilla/*","/home/*/.cache/BraveSoftware"} / $BKUP_DEST
