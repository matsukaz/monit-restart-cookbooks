# monit-restart-cookbooks

This cookbook is used from AWS OpsWorks.


## Description

Currently, OpsWorks uses [monit](http://mmonit.com/monit/) in order to manage each layer processes such as Node.js Server, Rails App Server, etc.

Monit process is executed from Chef's recipe and running as **root**, but */etc/security/limits.conf* settings are not applied to this user yet.
For this reason, all processes executed from monit process might be stuck in max open file descriptors.

This cookbook restarts monit process and monit managed processes with **sudo**.
As a result, */etc/security/limits.conf* settings are applied and you can avoid from max open files error.

## How to use

Apply this cookbook to the target Layer settings by adding **monit_restart** recipe to Deploy lifecycle as follows.

![Layer settings](https://github.com/matsukaz/monit-restart-cookbooks/layer_settings.png)
