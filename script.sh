#!/usr/bin/bash

read a b c

# проверка что все числа и больше 0
if [ "$a" -eq "$a" -a "$a" -gt 0 -a "$b" -eq "$b" -a "$b" -gt 0 -a "$c" -eq "$c" -a "$c" -gt 0 ] 2>>error.log;
then	#Треугольник
	if !(( "$a" + "$b" > "$c" & "$a" + "$c" > "$b" & "$c" + "$b" > "$a" )) ;
		 then echo "Не треугольник" >&2 ; exit 1 ;
	 #Равносторонний 
	elif [ "$a" -eq "$b" -a "$b" -eq "$c" ];
		then echo "Равносторонний треугольник"
	#Равнобедренный
	elif [ "$a" -eq "$b" -o "$a" -eq "$c" -o "$b" -eq "$c" ] ;
		 then echo "Равнобедренный треугольник"
	#Tреугольник
	else echo "Обычный треугольник"	
fi
else 
	echo "Ошибка: Неправильный аргумент" >&2 ; exit 2 ;
fi
