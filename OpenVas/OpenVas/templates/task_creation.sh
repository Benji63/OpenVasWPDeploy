#!/bin/bash

LOG_FILE="/opt/task_creation.log"

echo "$(date): Script started" >> "$LOG_FILE"
XML="<create_target><name>local</name><hosts>$1</hosts><alive_tests>ICMP, TCP-ACK Service &amp; ARP Ping</alive_tests></create_target>"
HOST_ID_FULl=$(omp -u admin -w admin -h 127.0.0.1 -p 9390 --xml "<create_target><name>local</name><hosts>$1</hosts><alive_tests>ICMP, TCP-ACK Service &amp; ARP Ping</alive_tests></create_target>")
echo "$(date): HOST_ID_FULl: $HOST_ID_FULl" >> "$LOG_FILE"

HOST_ID=$(echo "$HOST_ID_FULl" | grep -oP 'id="\K[^"]+')
echo "$(date): HOST_ID: $HOST_ID" >> "$LOG_FILE"

#HOST_ID=c4f1bcd8-56e2-4c2b-ae62-2c38f30e5df4

TASK_ID=$(omp -u admin -w admin -h 127.0.0.1 -p 9390 -C --target=$HOST_ID --config=daba56c8-73ec-11df-a475-002264764cea --name=scan)
echo "$(date): TASK_ID: $TASK_ID" >> "$LOG_FILE"

LAUNCHED_TASK=$(omp -u admin -w admin -h 127.0.0.1 -p 9390 -S $TASK_ID)
echo "$(date): LAUNCHED_TASK: $LAUNCHED_TASK" >> "$LOG_FILE"

interval=60

while true; do
    task_status=$(omp -u admin -w admin --get-tasks --details | grep -w "$LAUNCHED_TASK" | awk '{print $2}')

    if [ "$task_status" == "Done" ]; then
        echo "$(date): La tache est terminee. Continuer le script..." >> "$LOG_FILE"
        break
    else
        echo "$(date): En attente de la fin de la tache..." >> "$LOG_FILE"
        sleep $interval
    fi
done

report=$(omp -u admin -w admin --get-report $LAUNCHED_TASK)
echo "$(date): Rapport de scan:" >> "$LOG_FILE"
echo "$report" >> "$LOG_FILE"

echo "$report" | mail -s "Rapport de scan" $2

echo "$(date): Exporting variables to ~/.bashrc" >> "$LOG_FILE"
echo "export TARGET_ID=$HOST_ID" >> ~/.bashrc
echo "export IP_TARGET=$1" >> ~/.bashrc
source ~/.bashrc

echo "$(date): Script completed" >> "$LOG_FILE"