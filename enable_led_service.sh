#!/bin/bash

#copy service file to audio device
sudo cp pyLEDs.service /etc/systemd/system/


sudo cp 10-usb-audio.rules /etc/udev/rules.d/10-usb-audio.rules


sudo rm /etc/systemd/pysigaudio.service


# enable the service
sudo systemctl enable pyLEDs.service
sudo systemctl start pyLEDs.service

# view logs for errors. if there are, change .service files and run
# sudo sh enable_audio_service.sh && sudo sh restart_audio_service.sh
journalctl -u pyLEDs -f