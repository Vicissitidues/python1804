#!/bin/bash
#try
#获取乘法口诀表的函数
getTiles(){
   i=1
   j=1
   while [ $i -le 9 ]
   do
   while [ $j -le $i ]
   do
   mu=`expr $i \* $j`
   printf "%d x %d = %-2d  " $j $i $mu  
   let "j++"
   done
   j=1
   printf "\n"
   let "i++" 
   done
}
getNewTitie(){
   i=9
   j=1
   while [ $i -ge 1 ]
   do
   while [ $j -le 9 ]
   do
   if [ $j -lt $i ]
   then
      printf "            "
   else
      ma=`expr $i \* $j`
      printf "%d x %d = %2d  " $i $j $ma
   fi
   let "j++"
   done
   j=1
   printf "\n"
   let "i--"
   done
}

getGoTitie(){
   i=9
   j=9
   while [ $i -ge 1 ]
   do
   j=9
   while [ $j -ge 1 ]
   do
   if [ $j -gt $i ]
   then
      printf "            "
   else
      ma=`expr $i \* $j`
      printf "%d x %d = %2d  " $i $j $ma
   fi
   let "j--"
   done
   printf "\n"
   let "i--"
   done
}
getTiles
printf "\n\n\n"
getNewTitie
printf "\n\n\n"
getGoTitie
