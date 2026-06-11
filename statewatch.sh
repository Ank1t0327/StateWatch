#!/bin/bash

show_menu(){     #. creates a function
    clear

    echo "================================"
    echo "           StateWatch"
    echo "================================"
    echo 
    echo "1. CPU Monitor"
    echo "2. Memory Monitor"
    echo "3. Disk Monitor"
    echo "4. Exit"
    echo 
}

while true       #. means: Keep running forever until I explicitly exit.
do
    show_menu

    read -p "Choose an option: " choice  #-p means: display a prompt message.

    case $choice in          # Bash version of switch(choice)
        1) 
            bash modules/cpu_monitor.sh
            ;;
        2) 
            echo "Memory Monitor Coming Soon..."
            read -p "Press Enter to continue..."
            ;;
        3)
            echo "Disk Monitor Coming Soon..."
            read -p "Press Enter to continue..."
            ;;
        4)
            echo "GoodBye!!"
            exit 0
            ;;
        *)
            echo "Invalid Option!"
            sleep 2
            ;;
    esac

done