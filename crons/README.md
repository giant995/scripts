# Crons

## cronjobs

A file containing a list of cronjobs to be added to the user crontab.

### Installation

Make sure it is located in the same directory as the `setup-cron.sh` script

## setup-cron.sh

Loads from the same directory the `cronjobs` file and add jobs that are not in the crontab. 

### Installation

Make sure it is executable

```bash
chmod a+x ./setup-cron.sh
```

### Execute

Run `./setup-cron.sh` from where the script is installed.
