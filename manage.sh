#!/bin/bash

__usage="Use manage.sh with the following options 
        'start' -- to start the docker compose containers 
        'stop' -- to stop the docker compose containers 
        'logs' -- to see the docker compose container logs
	'status' -- to see the status of the docker compose containers
        'help' -- to see all of the available arguments "

logs=`docker compose logs`

status=`docker compose ps`


if [[ $1 == "start" ]]
then  
        `docker compose up -d`
        exit;
    
elif [[ $1 == "stop" ]]
then
        `docker compose down`
        exit;

elif [[ $1 == "logs" ]]
then
        echo "$logs" | tee -a dockerlogs.txt
        echo
        echo "Logs have also been stored in 'dockerlogs.txt'"
        exit;

elif [[ $1 == "status" ]]
then     
        echo "$status"
        exit;

elif [[ $1 == "help" ]]
then     
        echo "$__usage"
        exit;

else
        echo "This is a incorrect arguement! 
        Try using the 'help' arugment to see all of the options"
        exit
fi
