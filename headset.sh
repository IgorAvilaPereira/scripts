# https://community.acer.com/en/discussion/636092/acer-aspire-5-microphone-is-not-working-for-external-headset-on-ubuntu-20-04-2-lts/

# 1
sudo apt install ubuntu-restricted-extras


# 2
sudo nano /etc/modprobe.d/alsa-base.conf


# Now I have added these two lines in /etc/modprobe.d/alsa-base.conf and when I shut down and start the popup to select headphone and headset is working. but the internal mic(Digital microphone is not working for some reason) 

# options snd-hda-intel dmic_detect=0
# options snd-hda-intel model=alc255-acer

# 3
# sudo alsa force-reload
