#!/bin/basb
TodaysDate=$(date +"%m-%d-%Y")
bold=$(tput bold)
normal=$(tput sgr0)

animatedTextTest () {
    echo
    for l in  I n s t a l l a t i o n  ; do
        echo -n $l
        echo "\n"
        sleep .3
    done
    for l in s c r i p t  ; do
        echo -n $l
        sleep .2
    done
    for l in  b y : ; do
        echo -n $l
        echo " "
        sleep .3
    done
}

changelogFolder () {
    # clear

    if [ ! -d changes ]
    then echo " "
        echo " "
        echo "Creating changes folder..."
        sleep 1
        mkdir changes
        sleep 2
        echo " "
        echo "Done!"
        sleep 1
        echo " "

        # Let the user know what's going on
        echo "Adding Read and Write permissions to the folder..."
        sleep 1
        chmod 777 -R changes
        echo "Done!"
        echo "Moving on..."
        sleep 1

        # Now that all the boring setup stuff is done, let's let the user know.
        noMoreBoringStuff

    else echo " "
        echo "Found the changes folder!"
        sleep 2
        echo " "
        echo "Moving on..."
        sleep 2
        echo " "
        echo " "

    fi
}

CLprompt () {
    if [ ! -z $changelog ] ; then
        value=$changelog
    fi

    # show it to the user
    echo -n "Would you like to view a changelog?\nPlease enter yes or no\n ${value}"
    read input
    if [ "$input" == "yes" ]
    then
        echo "Okay."
        echo " "
        sleep 1.5

    fi

    if [ -z "$value" ]
    then
        read -p "Set ROM name: " changelog
        echo "Thanks, ROM name is $changelog"

        # Kind of a neat trick.

        # This takes the value the user was initially prompted
        # for, and then saves that value into the first line of
        # the script, therefore remembering thst value permanently.
        sed -i "10 i\changelog=$changelog" changes.sh


        echo " "
        sleep 2
    else
        echo "$value"
    fi
}

# Checks the package manager to see if Apache2 is installed.
# if not, we install it. otherwise just echo that the package is already installed
checkIfApacheIsInstalled() {

    # sed -i "4 i\areReqPackagesInstalled=$areReqPackagesInstalled" /storage/emulated/0/install.sh
    # echo " "

    ########  if [ ! -z $areReqPackagesInstalled ] ; then
    ####  value=$areReqPackagesInstalled
    # fi

    sleep 2
    echo "I am doing a quick check to see if Apache2 and ncurses-utils are installed.\n"
    sleep 2

    # ncurses-utils is to enable bold text.
    pkgs='apache2 ncurses-utils'
    if ! dpkg -s $pkgs >/dev/null 2>&1; then
        echo "Apache2 & ncurses-utils aren't installed."
        echo "\nInstalling..."
        sleep 1

        # Setting -y enables yes automatically
        pkg install -y $pkgs
        sleep 3
        echo " "
        echo "Done! "
        echo " "
        sleep 1.5

    else echo "Apache2 and libncurses-utils are installed!"
        echo " "
        sleep 1.5
        echo "Continuing..."
        echo " "
        echo " "
        sleep 2
        clear
        sleep 2
    fi
}

welcome() {
    cd $HOME
    echo "${bold}Hello!"
    echo " "
    sleep 2
    CLprompt
    # Quickly install Apache2 if it isnt installed
    checkIfApacheIsInstalled
    echo " "
    echo " "
    echo "This is a script to download Apache2."
    sleep 2.3
    echo "Meaning, you can use Termux to run a local web server.\n"
    sleep 4
    echo " "
    echo "Installation script by: "
    # animatedTextTest
    echo " "
    sleep 1.5
    echo "###############################################"
    echo "#                                             #"
    echo "#                                             #"
    echo "#              • Thelearn-tech •              #"
    echo "#                =============                #"
    echo "#                                             #"
    echo "#                     AKA                     #"
    echo "#             -- Pritam Behera --             #"
    echo "#                                             #"
    echo "#                                             #"
    echo "###############################################"
    echo " "
    sleep 2
    echo "code modified by https://github.com/HiFiiDev"
    echo " "
    sleep 4
    echo " "
    echo "${normal}Now, setting up...\n"
    sleep 2
    clear
    sleep 2
    echo " "
    echo " "
}

folderCheckHosts() {
    cd /data/data/com.termux/files/home/
    echo "Checking for a hosts file... "
    sleep 2
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
        sleep 3
        echo "Moving on... "
        sleep 1
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
    echo "Moving on...\n"
    sleep 1.5
}

setchangelog () {
    if [ ! -z $changelog ] ; then
        value=$changelog
    fi

    # show it to the user
    echo "\nROM name: ${value}"

    if [ -z "$value" ]
    then
        read -p "Set ROM name: " changelog
        echo "Thanks, ROM name is $changelog"
        sed -i "4 i\changelog=$changelog" /storage/emulated/0/install.sh
        echo " "
        sleep 2
    else
        echo "$value"
    fi
}

Outro() {

    # Other
    sleep 2
    echo "Installation complete!!"
    echo " "
    sleep 1
    echo "For more details, visit my github:"
    sleep 2
    echo "https://github.com/thelearn-tech/Apache-configure "
    sleep 3


}

# clear any text above
clear


#clear
changelogFolder
CLprompt
#fi

# Intro
welcome
# Check to see if the host folder has been made.
# If not, make it.
folderCheckHosts
# Finally...
setup
Outro


###################################################
####                                           ####
####                                           ####
####                From my repo:              ####
####   https://github.com/HiFiiDev/ROM-Changes ####
####                                           ####
####                                           ####
###################################################
# setchangelog

exit
