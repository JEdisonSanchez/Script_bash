#!/bin/bash
echo "========================"
echo "Ingrese la URL que desea validar"
read url
respuesta=$(curl -sIL $url | grep '^HTTP' | tail -1 | awk  '{print $2}')
if [[ "$respuesta" == "200" ]]; then
  echo "La página está bien"
else
  echo "La página tiene un problema"
fi
echo "========================"
