scriptHome=$HOME

clear
echo "Hello! "
echo " "
echo " "
sleep 2.5
echo "This is a script to download Apache2 "
sleep 1
echo "you can run your own web server. :) "
echo " "
sleep 1.6
echo "Installation script by: "
echo " "
sleep 1.5
echo "#########################"
echo "###                   ###"
echo "### - Thelearn-tech - ###"
echo "###        aka        ###"
echo "### - Pritam Behera - ###"
echo "###                   ###"
echo "#########################"
echo " "
sleep 1.5
sleep 2
echo " "
echo " "
setup() {
    echo "Auto configuring http.conf "
}

# Check for the hosts file
folderCheckOne() {
    cd /data/data/com.termux/files/home/
    echo "Checking for a hosts file... "
    if [ ! -d host ]
    then mkdir host
        echo "Hosts folder created! "
    else echo "Hosts folder found. "
    echo "Moving on... "
    echo " "
    sleep 2
    fi
}

# cd into apache2 folder
# and move the httpd.conf file
cd /data/data/com.termux/files/usr/etc/apache2
mv httpd.conf /data/data/com.termux/files/home
cd $HOME
cd Apache-configure
mv httpd.conf /data/data/com.termux/files/usr/etc/apache2
sleep 2
echo " "
echo " "
echo "Installation complete!!"
echo
sleep 1
echo "For more details, visit my github "
echo
echo "https://github.com/thelearn-tech/Apache-configure "
sleep 3 
exit 1

folderCheckOne
exit 1
