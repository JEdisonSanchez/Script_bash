#!/bin/bash
#Devuelve una lista de id's de los usuarios del sistema
id=$(cat /etc/passwd | awk -F ":" '{print $3}')

echo "Los usuarios con ID mayor a 1000 son:"
echo "========================"
#Recorre la lista de usuarios del sistema y filtra los que tengan id mayor a 1000
for id in do $id; do
    if [ $id -gt 1000 > /dev/null 2>&1 ] ; then
                users=$(cat /etc/passwd | cut -d: -f1,3 | grep $id | cut -d: -f1,2)
                echo "$users"
        fi
done
echo "========================"
