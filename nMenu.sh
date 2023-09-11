#!/bin/bash
 trap 'echo -en "\ec"; stty sane; exit' SIGINT
 aa=0
 A(){ for b in $(seq 0 29);do E${b};done; }
 B()
{
  local c
  IFS= read -s -n1 c 2>/dev/null >&2
  if [[ $c = $(echo -en "\e") ]]; then
    read -s -n1 c 2>/dev/null >&2
    if [[ $c = \[ ]]; then
      read -s -n1 c 2>/dev/null >&2
      case $c in
        A) echo d ;;
        B) echo e ;;
        C) echo f ;;
        D) echo g ;;
      esac
    fi
  elif [[ "$c" == "$(echo -en \\x0A)" ]]; then
    echo enter
  fi
}
 C()
{
 if [[ $i == d ]];then ((aa--));fi
 if [[ $i == e ]];then ((aa++));fi
 if [[ $aa -lt 0  ]];then aa=29;fi
 if [[ $aa -gt 29 ]];then aa=0;fi;
}

 D()
{
 j1=$((aa+1)); k1=$((aa-1))
 if [[ $k1 -lt 0   ]];then k1=28;fi
 if [[ $j1 -gt 29 ]];then j1=0;fi
 if [[ $aa -lt $aa ]];then echo -en "\e[0m";E$k1;else echo -en "\e[0m";E$j1;fi
 if [[ $j1 -eq 0   ]] || [ $k1 -eq 29 ];then
 echo -en "\e[0m" ; E$k1; E$j1;fi;echo -en "\e[0m";E$k1;E$j1;
}
 TXa()
{
 for (( a=2; a<=36; a++ ))
  do
   echo -e "\e[${a};1H\e[34m\xE2\x94\x82                                                                                \xE2\x94\x82\e[0m"
  done
 echo -en "\e[1;1H\e[34m┌────────────────────────────────────────────────────────────────────────────────┐\e[0m";
 echo -en "\e[2;2H\e[1;35m *** ***\e[0m";
 echo -en "\e[3;1H\e[34m├────────────────────────────────────────────────────────────────────────────────┤\e[0m";
 echo -en "\e[4;2H\e[2m коментарий\e[0m";
 echo -en "\e[5;1H\e[34m├────────────────────────────────────────────────────────────────────────────────┤\e[0m";
 echo -en "\e[35;1H\e[34m├─ \xE2\x86\x91 Up ───── \xE2\x86\x93 Down ──── \xe2\x86\xb2 Select Enter ────────────────────────────────────────┤\e[0m";
 echo -en "\e[37;1H\e[34m└────────────────────────────────────────────────────────────────────────────────┘\e[0m";
}
  E0(){ echo -en "\e[6;2H Установка                                                           \e[32m INSTALL \e[0m";}
  E1(){ echo -en "\e[7;2H Kраткий обзор                                                      \e[32m SYNOPSIS \e[0m";}
  E2(){ echo -en "\e[8;2H Описание                                                        \e[32m DESCRIPTION \e[0m";}
  E3(){ echo -en "\e[9;2H Смотрите также                                                       \e[32m AUTHOR \e[0m";}
  E4(){ echo -en "\e[10;2H                                                                            \e[32m  \e[0m";}
  E5(){ echo -en "\e[11;2H                                                                            \e[32m  \e[0m";}
  E6(){ echo -en "\e[12;2H                                                                            \e[32m  \e[0m";}
  E7(){ echo -en "\e[13;2H                                                                            \e[32m  \e[0m";}
  E8(){ echo -en "\e[14;2H                                                                            \e[32m  \e[0m";}
  E9(){ echo -en "\e[15;2H                                                                            \e[32m  \e[0m";}
 E10(){ echo -en "\e[16;2H                                                                            \e[32m  \e[0m";}
 E11(){ echo -en "\e[17;2H                                                                            \e[32m  \e[0m";}
 E12(){ echo -en "\e[18;2H                                                                            \e[32m  \e[0m";}
 E13(){ echo -en "\e[19;2H                                                                            \e[32m  \e[0m";}
 E14(){ echo -en "\e[20;2H                                                                            \e[32m  \e[0m";}
 E15(){ echo -en "\e[21;2H                                                                            \e[32m  \e[0m";}
 E16(){ echo -en "\e[22;2H                                                                            \e[32m  \e[0m";}
 E17(){ echo -en "\e[23;2H                                                                            \e[32m  \e[0m";}
 E18(){ echo -en "\e[24;2H                                                                            \e[32m  \e[0m";}
 E19(){ echo -en "\e[25;2H                                                                            \e[32m  \e[0m";}
 E20(){ echo -en "\e[26;2H                                                                            \e[32m  \e[0m";}
 E21(){ echo -en "\e[27;2H                                                                            \e[32m  \e[0m";}
 E22(){ echo -en "\e[28;2H                                                                            \e[32m  \e[0m";}
 E23(){ echo -en "\e[29;2H                                                                            \e[32m  \e[0m";}
 E24(){ echo -en "\e[30;2H                                                                            \e[32m  \e[0m";}
 E25(){ echo -en "\e[31;2H                                                                            \e[32m  \e[0m";}
 E26(){ echo -en "\e[32;2H                                                                            \e[32m  \e[0m";}
 E27(){ echo -en "\e[33;2H                                                                            \e[32m  \e[0m";}
 E28(){ echo -en "\e[34;2H                                                                            \e[34m  \e[0m";}
 E29(){ echo -en "\e[36;2H                                                                        \e[34m Exit \e[0m";}
 INI(){ echo -en "\ec" ;stty sane;TXa;A; };INI
 while [[ "$l1" != " " ]]; do case $aa in
  0)D;echo -en "\e[1;37m"; (E0);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e " 0";echo -en "\e[1;34m ENTER = main menu ";read;INI;fi;;
  1)D;echo -en "\e[1;37m"; (E1);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e " 1";echo -en "\e[1;34m ENTER = main menu ";read;INI;fi;;
  2)D;echo -en "\e[1;37m"; (E2);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e " 2";echo -en "\e[1;34m ENTER = main menu ";read;INI;fi;;
  3)D;echo -en "\e[1;37m"; (E3);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e " 3";echo -en "\e[1;34m ENTER = main menu ";read;INI;fi;;
  4)D;echo -en "\e[1;37m"; (E4);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e " 4";echo -en "\e[1;34m ENTER = main menu ";read;INI;fi;;
  5)D;echo -en "\e[1;37m"; (E5);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e " 5";echo -en "\e[1;34m ENTER = main menu ";read;INI;fi;;
  6)D;echo -en "\e[1;37m"; (E6);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e " 6";echo -en "\e[1;34m ENTER = main menu ";read;INI;fi;;
  7)D;echo -en "\e[1;37m"; (E7);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e " 7";echo -en "\e[1;34m ENTER = main menu ";read;INI;fi;;
  8)D;echo -en "\e[1;37m"; (E8);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e " 9";echo -en "\e[1;34m ENTER = main menu ";read;INI;fi;;
  9)D;echo -en "\e[1;37m"; (E9);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e " 9";echo -en "\e[1;34m ENTER = main menu ";read;INI;fi;;
 10)D;echo -en "\e[1;37m";(E10);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "10";echo -en "\e[1;34m ENTER = main menu ";read;INI;fi;;
 11)D;echo -en "\e[1;37m";(E11);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "11";echo -en "\e[1;34m ENTER = main menu ";read;INI;fi;;
 12)D;echo -en "\e[1;37m";(E12);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "12";echo -en "\e[1;34m ENTER = main menu ";read;INI;fi;;
 13)D;echo -en "\e[1;37m";(E13);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "13";echo -en "\e[1;34m ENTER = main menu ";read;INI;fi;;
 14)D;echo -en "\e[1;37m";(E14);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "14";echo -en "\e[1;34m ENTER = main menu ";read;INI;fi;;
 15)D;echo -en "\e[1;37m";(E15);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "15";echo -en "\e[1;34m ENTER = main menu ";read;INI;fi;;
 16)D;echo -en "\e[1;37m";(E16);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "16";echo -en "\e[1;34m ENTER = main menu ";read;INI;fi;;
 17)D;echo -en "\e[1;37m";(E17);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "17";echo -en "\e[1;34m ENTER = main menu ";read;INI;fi;;
 18)D;echo -en "\e[1;37m";(E18);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "18";echo -en "\e[1;34m ENTER = main menu ";read;INI;fi;;
 19)D;echo -en "\e[1;37m";(E19);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "19";echo -en "\e[1;34m ENTER = main menu ";read;INI;fi;;
 20)D;echo -en "\e[1;37m";(E20);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "20";echo -en "\e[1;34m ENTER = main menu ";read;INI;fi;;
 21)D;echo -en "\e[1;37m";(E21);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "21";echo -en "\e[1;34m ENTER = main menu ";read;INI;fi;;
 22)D;echo -en "\e[1;37m";(E22);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "22";echo -en "\e[1;34m ENTER = main menu ";read;INI;fi;;
 23)D;echo -en "\e[1;37m";(E23);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "23";echo -en "\e[1;34m ENTER = main menu ";read;INI;fi;;
 24)D;echo -en "\e[1;37m";(E24);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "24";echo -en "\e[1;34m ENTER = main menu ";read;INI;fi;;
 25)D;echo -en "\e[1;37m";(E25);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "25";echo -en "\e[1;34m ENTER = main menu ";read;INI;fi;;
 26)D;echo -en "\e[1;37m";(E26);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "26";echo -en "\e[1;34m ENTER = main menu ";read;INI;fi;;
 27)D;echo -en "\e[1;37m";(E27);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "27";echo -en "\e[1;34m ENTER = main menu ";read;INI;fi;;
 28)D;echo -en "\e[1;37m";(E28);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;echo -e "28";echo -en "\e[1;34m ENTER = main menu ";read;INI;fi;;
 29)D;echo -en "\e[1;37m";(E29);i=`B`;if [[ $i == enter ]];then echo -en "\ec";stty sane;exit 0;fi;;
esac;C;done
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ *** Commentary *** ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# - trap установка обработчика сигнала SIGINT для комбинации клавиш Ctrl+C
# ----------------------- Глобальные переменные --------------------------
# aa отслеживает, какой из шагов в первом меню в данный момент является активным, позволяя скрипту реагировать на ввод для изменения текущего активного шага.
# ab отслеживает, какой из шагов во вторм меню в данный момент является активным, позволяя скрипту реагировать на ввод для изменения текущего активного шага.
# ----------------------- Локальные  переменные --------------------------
# a переменная цикла рамки текста
# b это переменная, которая используются в циклах для итерации.
# c переменная используется для хранения символов, считанных с клавиатуры.
# d стрелка вверх.
# e стрелка вниз.
# f стрелка вправо
# g стрелка влево
# i обработчик курсора
# ----------------------- Локальные ветвящиеся переменные ----------------
# j1 j2 ... переменная служит для хранения индекса следующего  шага относительно текущего активного шага.
# k1 k2 ... переменная служит для хранения индекса предыдущего шага относительно текущего активного шага.
# l1 l2 проверяет условие, что значение переменной la не равно пробелу. Этот цикл будет выполняться, пока la не станет равным пробелу.
# ---------------------- Функции -----------------------------------------
# A() функция отвечает за последовательный вызов функций E0, E1, ..., E + 28 Количество вызовов функций зависит от значения 28
# B() функция предназначена для обработки ввода с клавиатуры, особенно при использовании ANSI escape-последовательностей, она может вернуть значения ca da enter
# C() функция в скрипте служит для обработки ввода пользователя и изменения текущего активного шага в меню.
# D() функция осуществляет действия, связанные с обработкой aa j1 k1 и выводом ANSI escape-последовательностей для управления отображением в терминале.
# TXa() функция создает варианнт текстового оформления a
# E0() - ...   начиная с E группа функций использует ANSI escape-последовательности для управления позицией курсора и установки цвета текста.
# E0() - E28() основная группа функций использует ANSI escape-последовательности для управления позицией курсора и установки цвета текста.
# F0() -  F9() дополнительная группа функций использует ANSI escape-последовательности для управления позицией курсора и установки цвета текста.
# INI Эта функция INI() выполняет инициализацию интерфейса. Ниже нельза переносить.
# WILa() функция первого основного цикла
# WILb() функция второго дополнительного цикла
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
