#!/bin/sh
#
# Having installed the 'delayed-shutdown' initscript, run:
#
#   test.sh &
#
# Now reboot or shutdown your machine. It should wait until
# /var/lock/noshutdown.lock is deleted and then proceed to shutdown.
#
touch /var/lock/noshutdown.lock
sleep 90
rm -f /var/lock/noshutdown.lock
exit 0

