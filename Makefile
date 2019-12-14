SHELL = /bin/bash
LOGDIR = /home/shashwat/DALab/backup
LOGEXT = log
BACKUPDIR = /home/shashwat/DALab/backupdir
start: createarchive movearchive deletelogs
echo "Logs files are archived and deleted"
createarchive:
tar czf archive.tar.gz $(find $(LOGDIR))
movearchive:
mv archive.tar.gz $(BACKUPDIR)/$(date +%F).tar.gz
deletelogs:
rm $(find $(LOGDIR) -name "*.$(LOGEXT)")

