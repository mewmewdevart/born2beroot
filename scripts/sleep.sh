#!/bin/bash

# script that calculates the delay between server startup time and the tenth minute of the hour, then add it to the cron job to apply the delay./

# Get boot time minutes and seconds
BOOT_MINUTES=$(uptime -s | cut -d ":" -f 2)
BOOT_SECONDS=$(uptime -s | cut -d ":" -f 3)

# Calculate number of seconds between the nearest 10th minute of the hour and boot time:
# Ex: if boot time was 11:43:36
# 43 % 10 = 3 minutes since 40th minute of the hour
# 3 * 60 = 180 seconds since 40th minute of the hour
# 180 + 36 = 216 seconds between nearest 10th minute of the hour and boot
DELAY=$(bc <<< $BOOT_MINUTES%10*60+$BOOT_SECONDS)

# Wait that number of seconds
sleep $DELAY
