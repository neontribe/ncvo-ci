## NCVO Docker

Runs the CI for NCVO Front COntroller.

### Running it

    docker-compose up --build -d

It does need the mounted docker volume.  It does get backed up but the LDAP config would need re-configuring and the tockens regenerating, etc.

### Run periodically

ATM we don't have a web hook to trigger builds so link the cron file into /etc/cron.hourly to get it to build every hour.

    sudo ln -s /opt/dockers/ncvo/cron.hourly /etc/cron.hourly/ncvo-docker
