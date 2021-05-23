# How to use
  * Fork this project
  * Clone to your machine (Ubuntu)
  * Modify report.sh, change `cd /home/isaac` to your own path
  * Config crontab to let machine to run report before login
    * Execute `crontab -e`
    * Add following command `@reboot /yourprojectfolder/mymachines/report.sh > /yourlogfolder/report.log`
  * After machine reboot, the `report.sh` will wait interfaces up for 30 secs, then get interface information and push to your forked project
  * Please try to execute `report.sh` directly before setup in cron and reboot
