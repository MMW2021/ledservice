#!/bin/bash

#copy service file to systemd
sudo cp pyLEDs.service /etc/systemd/system/

# enable the service
sudo systemctl enable pyLEDs.service
sudo systemctl start pyLEDs.service

# view logs for errors. if there are, change .service files and run
# sudo sh enable_led_service.sh 
journalctl -u pyLEDs -f