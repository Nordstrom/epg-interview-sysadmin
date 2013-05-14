# Sysadmin Interview Assignment

## Description

This is an opportunity to demonstrate your system administration ability
through code.  

### You have to implement the following user stories:

Our httpd.conf or IIS config file needs to be updated.  Please choose
one of them, and implement the following.

* (httpd.conf) Add support for users to serve content from their home
  directories
* Add a custom 404 error page
* Add a site, a default index file, and allow directory indexing for
  the entire site
* Enable support for PHP or ASP
* Listen on port 80 and 8080

## Include the following additional code elements:

* Linux: Configure Apache to start at boot, include the scripts used
  to do this.
* Linux: Add support for an additional Kernel into GRUB and make it
  password protected
* Windows:  Include a script or command to enable pre-requisite features for IIS
* Windows:  Configure the IIS pool to not start at boot and a script
  to start it on demand.
* Windows:  Add support for SSL, bind a cert to the appropriate site
* Both:  Write a simple script to do local testing of the web server and
  write to a log file with the status, schedule this to run every 5 minutes.

Additionally, choose 1 common system administration related task that is better suited by a
scripted process.  Share the script and a description of the problem
it solves.

## Rules:

* Clone this repo to your github account.
* You can choose either Linux or Windows
* You have to push the code on your Github account and make a pull
  request to with the results.

**IF YOU CAN'T USE A PUBLIC REPO ON GITHUB, USE BITCUCKET [[ https://bitbucket.org/ ]] AND SET UP A PRIVATE REPO**
