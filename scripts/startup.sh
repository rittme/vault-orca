echo "Starting startup.sh.."

update-ca-certificates

echo "*/${MINUTES}       *       *       *       *       /usr/local/orca.sh" >> /etc/crontabs/root
crontab -l
crond -f -l 8