#!/bin/sh

echo "================================================="
echo "Starting SMTP server on localhost:25"
echo "All email sent to this host will be printed below"
echo
echo "Press Control+C to exit"
echo
echo "Waiting for email..."
echo "================================================="

sudo python -m smtpd -n -c DebuggingServer localhost:25
