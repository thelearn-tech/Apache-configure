clear
printf '\033[32m';echo "Hello! "
sleep 1.5
echo "This is a script to download Apache2, you can run your own web server. "
echo " "
sleep 1.6
printf '\033[36m';echo "Installation script by thelearn-tech"
sleep 1.5
echo "AKA Pritam Behera "
sleep 2
echo " "
echo " "
setup() {
    echo auto configuring http.conf
}

folderCheckOne() {
    cd /data/data/com.termux/files/home/
    echo "Checking for a hosts file... "
    if [ ! -d host ]
    then mkdir host
        echo "Hosts folder created! "
    else echo "Hosts folder found. "
    fi
}

other() {
    cd /data/data/com.termux/files/usr/etc/apache2
    mv httpd.conf /data/data/com.termux/files/home
    cd
    cd Apache-configure
    mv httpd.conf /data/data/com.termux/files/usr/etc/apache2
    sleep 2
    clear
    printf '\033[32m';echo installation complete
    echo
    sleep 1
    echo for more details visit my github
    echo
    printf '\033[36m';echo https://github.com/thelearn-tech/Apache-configure
    sleep 3
    clear
}
folderCheckOne
exit 1
