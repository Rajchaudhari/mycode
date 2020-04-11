#!/bin/bash
spinner=( ooo0 0ooo o0oo oo0o )

copy(){
   spin &
   pid=$!


   for i in 'seq 1 10'
   do 
     sleep 10
   done

   kill $pid
}



spin(){
  while [ 1 ]
  do
   for i in "${spinner[@]}"
   do
    echo -ne "\r$i"
    sleep 0.2
   done
  done
} 	

copy
