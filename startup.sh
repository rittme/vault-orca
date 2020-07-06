echo "Starting startup.sh.."
echo "*/${MINUTES}       *       *       *       *       run-parts /etc/periodic/custom" >> /etc/crontabs/root
crontab -l