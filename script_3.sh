#!/bin/bash
espacioDisco=$(df / | grep / | awk '{ print $5}' | sed 's/%//g')
echo "========================"
if [ "$espacioDisco" -le 40 ] ;
then
        echo "Tu disco está bien"
        echo "El espacio usado es: $espacioDisco"%
elif [ "$espacioDisco" -ge 41  ] && [ "$espacioDisco" -le 80 ];
then
        echo "Tu disco está regular"
        echo "El espacio usado es: $espacioDisco"%
elif [ "$espacioDisco" -ge 81  ];
then
        echo "Necesitas cambiar de disco"
        echo "El espacio usado es: $espacioDisco"%
fi
echo "========================"
