scriptHome=$HOME
TodaysDate=$(date +"%m-%d-%Y")

welcome() {
    cd $HOME
    echo "Hello! "
    echo " "
    sleep 2
    echo "This is a script to download Apache2. "
    sleep 2
    echo " "
    animatedTextTest
    echo " "
    echo " "
    echo " "
    sleep 1.5
    echo "######################################"
    echo "###                                ###"
    echo "###        • Thelearn-tech •       ###"
    echo "###               aka...           ###"
    echo "###        - Pritam Behera -       ###"
    echo "###                                ###"
    echo "######################################"
    echo " "
    echo " "
    sleep 2
    echo " "
    echo "Now, setting up... "
    echo " "
    echo " "
}

animatedTextTest () {
    echo
    for l in I n s t a l l a t i o n ; do
        echo -n $l
        sleep .1
    done
    echo -n " "
    for l in s c r i p t ; do
        echo -n $l
        sleep .1
    done
    echo -n " "
    for l in b y ; do
        echo -n $l
        sleep .1
    done
}

# Checks the package manager to see if Apache2 is installed.
# if not, we install it. otherwise just echo that the package is already installed
checkIfApacheInstalled() {
    pkg="apache2"
    if rpm -q $pkg
    then
        echo "$pkg installed"
    else
        echo "$pkg NOT installed. \nInstalling..."
        pkg install -y apache2

    fi

    # pkg -l | grep -qw package || pkg install -y apache2
}

folderCheckHosts() {
    cd /data/data/com.termux/files/home/
    echo "Checking for a hosts file... "
    echo " "
    sleep 2
    echo "Done!\n"

    # If the host directory doesnt exist
    if [ ! -d host ]
    then mkdir host
        echo "Hosts folder wasnt found. "
        sleep 1.5
        echo "\nFolder created! "
        sleep 2
    else echo "Hosts folder found. \n"
        echo "Moving on... "
        echo " "
        sleep 2
    fi
}

setup() {

    # cd to the apache2 folder
    echo "cd'ing into the apache2 folder..."
    cd /data/data/com.termux/files/usr/etc/apache2
    sleep 2
    echo "Done.\n"

    # Move the httpd.conf file to termux' home
    echo "Moving the httpd.conf file..."
    mv /data/data/com.termux/files/home/Apache-configure/httpd.conf /data/data/com.termux/files/home
    sleep 2
    echo "Done.\n"

    # cd to the home folder
    echo "Going home..."
    cd /data/data/com.termux/files/home/
    sleep 2
    echo "Done.\n"

    # Move the httpd.conf file to the apache2 dir
    echo "Moving the httpd.conf file from $HOME to usr/etc/apache2"
    mv httpd.conf /data/data/com.termux/files/usr/etc/apache2
    sleep 2
    echo "Done.\n"
    sleep 2
    "Moving on...\n"
    sleep 1.5
}

# clear any text above
clear
# Quickly install Apache2 if it isnt installed
checkIfApacheInstalled
# Intro
welcome
# Check to see if the host folder has been made.
# If not, make it.
folderCheckHosts
# Finally...
setup

# Other
sleep 2
echo " "
echo " "
echo "Installation complete!!"
echo " "
sleep 1
echo "For more details, visit my github "
echo " "
echo "https://github.com/thelearn-tech/Apache-configure "
sleep 3
exit
