#!/bin/bash


TASK_ID=$(omp -u admin -w admin -h 127.0.0.1 -p 9390 -C --target=$2 --config=daba56c8-73ec-11df-a475-002264764cea --name=scan)

LAUNCHED_TASK=$(omp -u admin -w admin -h 127.0.0.1 -p 9390 -S $TASK_ID)

interval=60

while true; do
    task_status=$(omp -u admin -w admin --get-tasks --details | grep -w "$LAUNCHED_TASK" | awk '{print $2}')

    if [ "$task_status" == "Done" ]; then
        echo "La tache est terminee. Envoie du mail ..."
        break
    else
        echo "En attente de la fin du scan ..."
        sleep $interval
    fi
done

omp -u admin -w admin --get-report $LAUNCHED_TASK | mail -s "Rapport de scan" openvasbachelor3@gmail.com