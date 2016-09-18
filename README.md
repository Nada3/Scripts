# Scripts

## Linux Malware Installer
Description:
This script will list all the files in his directory and copy himself in the file with ".sh" extensions. After he do that, he will test if he have administrators right. If yes, he will execute or download an external script as root.

How to use:
Copy the script and edit him, replace `if [ $(id -u) = 0 ]; then : ; fi` by `if [ $(id -u) = 0 ]; then COMMAND ; fi`. Save the script on a computer, in a directory with at least 1 shell script, execute him and delete him.

Sign: iWiiLkd..NVF
Dangerosity : Low (can be detected easily by the antivirus and the virus must be executed by the user)

