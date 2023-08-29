#!/bin/bash

echo "EUROPEAN PARLIAMENT ONLINE"


#to launch and build the application 
#sudo docker compose -f docker-compose-rabbit.yaml up
xterm -e bash -c "sudo docker compose -f docker-compose-rabbit.yaml up; bash" &


#wait until rabbitmq container ends the initialization
sleep 5


#sudo docker compose -f docker-compose-ita.yaml up
#sudo docker compose -f docker-compose-fra.yaml up
#sudo docker compose -f docker-compose-ger.yaml up
xterm -e bash -c "sudo docker compose -f docker-compose-ita.yaml up; bash" &
xterm -e bash -c "sudo docker compose -f docker-compose-fra.yaml up; bash" &
xterm -e bash -c "sudo docker compose -f docker-compose-ger.yaml up; bash" &