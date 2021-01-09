TodaysDate=$(date +"%m-%d-%Y")
bold=$(tput bold)
normal=$(tput sgr0)


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
    for l in b y : ; do
        echo -n $l
        sleep .1
        echo -n " "
    done
}

# Checks the package manager to see if Apache2 is installed.
# if not, we install it. otherwise just echo that the package is already installed
checkIfApacheIsInstalled() {
	
	sed -i "4 i\areReqPackagesInstalled=$areReqPackagesInstalled" /storage/emulated/0/install.sh
        echo " "
        
        if [ ! -z $areReqPackagesInstalled ] ; then
        value=$areReqPackagesInstalled
    fi

    sleep 2
    echo "I am doing a quick check to see if Apache2 and ncurses-utils are installed."
    sleep 2.5
    
    # ncurses-utils is to enable bold text.
    pkgs='apache2 ncurses-utils'
    if ! dpkg -s $pkgs >/dev/null 2>&1; then
        echo "Apache2 & ncurses-utils aren't installed."
        echo "\nInstalling..."
        sleep 1
        pkg install $pkgs

    else echo "Apache2 is installed!\n"
        sleep 2
        echo "ncurses-utils is installed!\n"
        echo "Continuing..."
        sleep 1.5
    fi
}

welcome() {
    cd $HOME
    echo "${bold}Hello!${normal}"
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
    sleep 3
    # Quickly install Apache2 if it isnt installed
    checkIfApacheIsInstalled
    echo " "
    echo " "
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

setROM_name () {
    if [ ! -z $ROM_name ] ; then
        value=$ROM_name
    fi

    # show it to the user
    echo "\nROM name: ${value}"

    if [ -z "$value" ]
    then
        read -p "Set ROM name: " ROM_name
        echo "Thanks, ROM name is $ROM_name"
        sed -i "4 i\ROM_name=$ROM_name" /storage/emulated/0/install.sh
        echo " "
        sleep 2
    else
        echo "$value"
    fi
}

# clear any text above
clear
setROM_name
# Intro
welcome
# Check to see if the host folder has been made.
# If not, make it.
folderCheckHosts
# Finally...
setup


Outro() {

    # Other
    sleep 2
    clear
    sleep 2
    echo "Installation complete!!"
    echo " "
    sleep 1
    echo "For more details, visit my github "
    echo " "
    echo "https://github.com/thelearn-tech/Apache-configure "
    sleep 3
}

exit
