#!/bin/bash
sudo setfacl -R -m u:jellyfin:rwx /home/iapereira/emby
sudo setfacl -R -m u:jellyfin:rwx /media/iapereira/hd
sudo setfacl -R -m u:jellyfin:rwx /media/iapereira/igor
sudo setfacl -R -m u:jellyfin:rwx /media/iapereira/IGOR_SSD_128GB 
sudo setfacl -R -m u:jellyfin:rwx /media/iapereira/USB STICK
sudo setfacl -R -m u:jellyfin:rwx /media/iapereira/hd_500gb       
sudo setfacl -R -m u:jellyfin:rwx /media/iapereira/igor_500gb     
sudo setfacl -R -m u:jellyfin:rwx /media/iapereira/IGOR_SSD_256GB 
sudo service jellyfin stop
sudo service jellyfin start
