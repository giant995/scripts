# Crons

Small utility script to add a list of cronjobs to the user crontab.

## Prerequisites

The `cronjobs` file should contain a list of desired cronjobs.

## Installation

Make sure `install.sh` is executable and run it 

```bash
chmod a+x ./install.sh && ./install.sh
``` 

The files `setup-cron` and `cronjobs` should be copied to `/usr/local/bin/`.

## Execute

Run `setup-cron` from anywhere to load all jobs from `cronjobs`.

User crontab can be listed with

```bash
crontab -l
```
