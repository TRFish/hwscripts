#!/bin/bash

# Основной цикл интерактивной оболочки
command="help"
while true; do
    if [ $command = "help" ]
    then
        echo "Таблица команд:"
        echo "info: Информация о пользователе и об ОС"
        #echo ": "
        #echo ": "
        echo
    elif [ $command = "info" ]
    then
        source /usr/lib/os-release
        echo "username: $USER"
        echo "release: $PRETTY_NAME ($BUILD_ID)"
    elif [ $command = "3" ]
    then
        echo ih
    fi

    echo -n "Command (help): "
    read command
    #if [ command = " " ]
    #then
    #command="help"
    #fi
done