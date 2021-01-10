TodaysDate=$(date +"%m-%d-%Y")
bold=$(tput bold)
normal=$(tput sgr0)

# Animated text in terminal!
animatedTextTest () {
    echo
    for l in  C h e c k i n g  ; do
        echo -n $l
        sleep .1
    done
    for l in  P a c k a g e s  ; do
        echo -n $l
        sleep .1
    done
}

# Checks the package manager to see if Apache2 is installed.
# if not, we install it. otherwise just echo that the package is already installed
checkIfApacheIsInstalled() {
    echo "################################################"
    echo "#                                              #"
    echo "#             - Apache 2 Server -              #"
    echo "#              Checking packages...            #"           #"
    echo "#                                              #"
    echo "################################################"
    echo " "
    echo " "
    echo "Doing a quick check...\n"
    sleep 1.5
    echo "Seeing if Apache2 and ncurses-utils are installed.\n"
    sleep 2

    # ncurses-utils is required to enable bold text.
    pkgs='apache2 ncurses-utils'
    if ! dpkg -s $pkgs >/dev/null 2>&1; then
        echo "Apache2 & ncurses-utils aren't installed."
        echo "\nInstalling..."
        sleep 1

        # Setting -y enables yes automatically
        # versus making the user type in a Yes or no prompt.
        pkg install -y $pkgs
        sleep 2
        echo " "
        echo "Done! "
        echo " "
        sleep 1.5

    else echo "Apache2 and libncurses-utils are installed!"
        echo " "
        sleep 1.5
        echo "Continuing..."
        echo " "
        clear
    fi
}

welcome() {
    cd $HOME
    echo "${bold}Hello!"
    echo "################################################"
    echo "#                                              #"
    echo "#             - Apache 2 Server -              #"
    echo "#                   Welcome!                   #"           #"
    echo "#                                              #"
    echo "################################################"
    echo " "
    echo " "
    sleep 3
    clear
    echo "################################################"
    echo "#                                              #"
    echo "#             - Apache 2 Server -              #"
    echo "#     This is a script to download Apache2.    #"                   #"           #"
    echo "#                                              #"
    echo "################################################"
    echo " "
    sleep 3
    clear
    echo "################################################"
    echo "#                                              #"
    echo "#             - Apache 2 Server -              #"
    echo "#     This is a script to download Apache2.    #"                   #"           #"
    echo "# You can use Termux to run a local web server #"
    echo "#                                              #"
    echo "################################################"
    echo " "
    sleep 3
    clear
}
# We search for the host folder.
# if it isnt found, just make the directory and continue.
folderCheckHosts() {
    cd /data/data/com.termux/files/home/
    echo "Checking for a host folder... "
    sleep 2
    echo " "
    sleep 2
    echo "Done!\n"

    # If the host directory doesnt exist
    if [ ! -d host ]
    then mkdir host
        echo "Host folder wasnt found. "
        sleep 1.5
        echo "\nFolder created! "
        sleep 2
    else echo "Host folder found. \n"
        sleep 2
        echo "Moving on... \n"
        sleep 1
    fi
}

# This sets everything up.
setup() {

    echo "################################################"
    echo "#                                              #"
    echo "#             - Apache 2 Server -              #"
    echo "#                    Setup                     #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#         cd'ing into the apache2 folder...    #"                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "################################################"
    sleep 1.5
    clear
    ### cd to the apache2 folder ###
    # echo "cd'ing into the apache2 folder..."
    cd /data/data/com.termux/files/usr/etc/apache2
    echo "Done.\n"

    ### Move the httpd.conf file to termux' home ###
    echo "################################################"
    echo "#                                              #"
    echo "#             - Apache 2 Server -              #"
    echo "#                    Setup                     #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#          Moving the httpd.conf file...       #"                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "################################################"
    echo " "
    echo " "
    # echo "Moving the httpd.conf file..."
    mv /data/data/com.termux/files/home/Apache-configure/httpd.conf /data/data/com.termux/files/home
    sleep 2
    echo "Done.\n"

    ### cd to the home folder ###
    echo "Going home..."
    cd /data/data/com.termux/files/home/
    sleep 2
    echo "Done.\n"

    echo "################################################"
    echo "#                                              #"
    echo "#             - Apache 2 Server -              #"
    echo "#                    Setup                     #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#    Moving the httpd.conf file from $HOME     #"
    echp "#            to usr/etc/apache2                #"                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "#                                              #"
    echo "################################################"

    ### Move the httpd.conf file to the apache2 dir ###
    echo "Moving the httpd.conf file from $HOME to usr/etc/apache2"
    mv httpd.conf /data/data/com.termux/files/usr/etc/apache2
    sleep 2
    echo "Done.\n"
    sleep 2
    echo "Moving on...\n"
    sleep 1.5
}

### WIP 01/09/21 ###
setROM_name () {
    if [ ! -z $ROM_name ] ; then
        value=$ROM_name
    fi

    ### show it to the user ###
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

#
Outro() {

    ### Other ###
    sleep 2
    echo "Installation complete!!"
    echo " "
    sleep 1
    echo "For more details, visit my github:"
    sleep 1
    echo "https://github.com/thelearn-tech/Apache-configure "
    echo " "
    echo " "
    sleep 3
}

### clear any text above ###
clear
# animatedTextTest
# Intro
welcome
setup
# Check to see if the host folder has been made.
# If not, make it.
folderCheckHosts
Outro

###################################################
####                                           ####
####                                           ####
####                From my repo:              ####
####   https://github.com/HiFiiDev/ROM-Changes ####
####                                           ####
####                                           ####
###################################################
# setROM_name

exit
