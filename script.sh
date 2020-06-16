#!/usr/bin/bash

a=$1
b=$2
c=$3

# проверка что все числа и больше 0
if [ "$a" -eq "$a" -a "$a" -gt 0 -a "$b" -eq "$b" -a "$b" -gt 0 -a "$c" -eq "$c" -a "$c" -gt 0 ] 2>>error.log;
then #Равносторонний 
	if [ "$a" -eq "$b" -a "$b" -eq "$c" ];
		then echo "Равностоонний"
	#Равнобедренный
	elif [ "$a" -eq "$b" -o "$a" -eq "$c" -o "$b" -eq "$c" ] ;
		 then echo "Равнобедренный"
	#Треугольник
	elif (( "$a" + "$b" > "$c" & "$a" + "$c" > "$b" & "$c" + "$b" > "$a" )) ;
		 then echo "Треугольник"
	#Не треугольник
	else echo "Не треугольник"	
fi
else 
	echo "Ошибка: Неправильный аргумент"; tail -n1 error.log; exit 1
fi
