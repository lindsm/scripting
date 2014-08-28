# This file rsync's data from /data/bacula to /media/offsite another.

umount /media/offsite/
mount -t exfat /dev/sdb1/ /media/offsite/
if grep -qs '/media/offsite' /proc/mounts; then
    echo "We have succesfully  mounted the external drive."
    rsync -rltvh --progress /data/bacula /media/offsite/
    umount /media/offsite
else
    echo "There was an error moudting the external drive." | mail -s "Bacula Error" mlindsay@kirkmangroup.com
fi
#rsync -rltvh --progress /data/bacula /media/offsite/
