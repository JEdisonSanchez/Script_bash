#!/bin/bash
echo "Los usuarios con consola bin/bash son:"
echo "========================"
shell=$(cat /etc/passwd | grep /bin/bash | cut -d: -f1,7)
echo "$shell"
echo "========================"
