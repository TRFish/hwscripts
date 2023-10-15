#!/bin/bash

# Основной цикл интерактивной оболочки
command="help"
while true; do
    if [ $command = "help" || $command = "0" ]
    then
        echo "Таблица команд:"
        echo "info: Информация о пользователе и об ОС"
        echo "xomyak: Выводит список всех файлов из домашней дирректории (с правами)"
        #echo ": "
        echo
        
    elif [ $command = "info" || $command = "1" ]
    then
        source /usr/lib/os-release
        echo "username: $USER"
        echo "release: $PRETTY_NAME ($BUILD_ID)"

    elif [ $command = "xomyak" || $command = "2" ]
    then
        ls -la ~

    fi

    echo -n "Command (help): "
    read command
    #if [ command = " " ]
    #then
    #command="help"
    #fi
done