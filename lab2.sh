#!/bin/bash

command="help"
while true; do
    if [ $command = "help" ] || [ $command = "0" ]
    then
        echo "Таблица команд:"
        echo "0. help: Выводит таблицу всех комманд"
        echo "1. info: Информация о пользователе и об ОС"
        echo "2. xomyak: Выводит список всех файлов из домашней дирректории (с правами)"
        echo "3. newfile: Создаёт новый файл с задаными правами"
        echo "4. ping: Отправка пакетов"
        echo

    elif [ $command = "info" ] || [ $command = "1" ]
    then
        source /usr/lib/os-release
        echo "username: $USER"
        #echo "hostname: $HOSTNAME"
        echo "release: $PRETTY_NAME ($BUILD_ID)"

    elif [ $command = "xomyak" ] || [ $command = "2" ]
    then
        ls -la ~
    
    elif [ $command = "newfile" ] || [ $command = "3" ]
    then
        echo -n "Введите название нового файла: "
        read fname
        echo -n "Введите права для нового файла (оставьте пустым для прав по-умолчанию): "
        read frule
        touch $fname
        if [ $frule ]
        then
            chmod $frule $fname
        fi
    
    elif [ $command = "ping" ] || [ $command = "4" ]
    then
        echo -n "Адрес: "
        read address
        echo -n "Кол-во пакетов: "
        read packages
        if [ $address ] && [ $packages ]
        then
            ping -c $packages $address
        else
            echo "Строка не может быть пустой!"
        fi
    fi

    echo -n "Command (help): "
    read command
    if [ -z $command ]
    then
        command="help"
    fi
done