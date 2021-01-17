#!/bin/bash
TodaysDate=$(date +"%m-%d-%Y")
result=${PWD##*/}
apacheFolder=/data/data/com.termux/files/home/Apache-configure/
home=$HOME
apache="Apache-configure"

welcome () {
    echo "Hello"
    echo " "
    echo " "
    echo "Navigating to your ${home}/${apache} folder if we arent there already!!"
    echo " "
    sleep 0.8
}

dirCheck () {

    if [ $result == $apache ] ;
    then echo "You already there."
        echo " "
        sleep 2
        echo "Moving on..."
        echo " "
        sleep 2
        setCL_Choice
    else echo "Going to your $home/$apache folder..."
        echo " "
        cd $apacheFolder
        sleep 2
        echo "$PWD" && ls && sleep 4
        echo "done"
        echo " "
    fi

}


rememberCLChoice () {
    if [ ! -z $CL_Choice ] ; then
        value=$CL_Choice
    fi

    ### echo "\nWould you like to see a changelog?: ${value}"

    if [ -z "$value" ] ;
    then echo "Looks like this is your first time running the script."
        echo " "
        sleep 2
        read -p "Would you like to view a changelog?: " CL_Choice
        echo "Alright!"
        sed -i "7 i\does_user_want_cl=$CL_Choice" $HOME/cl.sh
        echo " "
        sleep 2
    else
        echo "$value"
    fi
}

# Welcome them.
welcome

# Check their directory
dirCheck

# Remember their choice
rememberCLChoice