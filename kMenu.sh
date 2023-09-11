#!/bin/bash
 a="\e[1;32m+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+\e[0m"
 b="\e[1;32m+-------------------------------------+\e[0m"
#c
#d
#e
function menu {
clear
tput cup 0 0; echo -e "$a"
tput cup 1 0
 for (( c=0; c<=23; c++ ))
  do
   echo -e "\e[1;32m|                                     |\e[0m"
  done
#
tput cup  1  1; echo -e "\e[1;36m U \e[0m\e[36m Ю\e[0m"
tput cup  2  0; echo -e "$b"
tput cup  3  1;echo -e "\e[33m [1]\e[0m "
tput cup  4  1;echo -e "\e[33m [2]\e[0m "
tput cup  5  1;echo -e "\e[33m [3]\e[0m "
tput cup  6  1;echo -e "\e[33m [4]\e[0m "
tput cup  7  1;echo -e "\e[33m [5]\e[0m "
tput cup  8  1;echo -e "\e[33m [6]\e[0m "
tput cup  9  1;echo -e "\e[33m [7]\e[0m "
tput cup 10  1;echo -e "\e[33m [8]\e[0m "
tput cup 11  1;echo -e "\e[33m [9]\e[0m "
tput cup 12  1;echo -e "\e[33m [a]\e[0m "
tput cup 13  1;echo -e "\e[33m [b]\e[0m "
tput cup 14  1;echo -e "\e[33m [c]\e[0m "
tput cup 15  1;echo -e "\e[33m [d]\e[0m "
tput cup 16  1;echo -e "\e[33m [e]\e[0m "
tput cup 17  1;echo -e "\e[33m [f]\e[0m "
tput cup 18  1;echo -e "\e[33m [g]\e[0m "
tput cup 19  1;echo -e "\e[33m [h]\e[0m "
tput cup 20  1;echo -e "\e[33m [i]\e[0m "
#
tput cup 22  0;echo -e "$b"
tput cup 23  1;echo -e "\e[33m [0]\e[0m Exit"
tput cup 24  0;echo -e "$a"
#
tput cup 21  1;echo -e "\e[33m [ ]\e[0m Ожидание ввода команды: "
tput cup 21 30;read -n 1 option
#
}
#menu software
while [ $? -ne 1 ]
do
menu
case $option in
0)
clear
exit 0
;;
1)load;clear;echo " ";;
2)load;clear;echo " ";;
3)load;clear;echo " ";;
4)load;clear;echo " ";;
5)load;clear;echo " ";;
6)load;clear;echo " ";;
7)load;clear;echo " ";;
8)load;clear;echo " ";;
9)load;clear;echo " ";;
a)load;clear;echo " ";;
b)load;clear;echo " ";;
c)load;clear;echo " ";;
d)load;clear;echo " ";;
e)load;clear;echo " ";;
f)load;clear;echo " ";;
g)load;clear;echo " ";;
h)load;clear;echo " ";;
i)load;clear;./lSymbols.sh;;
*)
clear
echo " Неверный ввод данных, пожалуйста повторите ввод ";;
esac
echo -en " Пожалуйста нажмите любую клавишу для продолжения "
read -n 1 line
done
clear
