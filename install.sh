printf '\033[36m';echo Installation script by
echo thelearn-tech 
echo AKA Pritam Behera
sleep 2
clear
echo
echo
printf '\033[32m';echo auto configuring http.conf
cd
mkdir host
cd $PREFIX/etc/share/apache2
mv httpd.conf $HOME
cd
cd Apache-configure
mv httpd.conf $PREFIX/etc/share/apache2
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
exit 1
