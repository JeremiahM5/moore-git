#!/bin/bash



read -p "what is your name? " NAME
read -p "what city are you in? " CITY
read -p "how old are you? " AGE

echo "Let me fetch your info this might take few seconds ...."
sleep 4
echo "Your name is: $NAME , you live in: $CITY , and you are $AGE years old"



if [ $AGE -lt 40 ] && [ $AGE -gt 18 ]   # -gt , -le , -ge , ==


then

echo "You are still young!!" 
elif [ $AGE == 40 ]
then
        echo "You have the perfect age!!"
elif [ $AGE -lt 18 ]
then
echo "Go call mom"      
elif [ $AGE -gt 80 ]
then
        echo "Do you need assistance? " 
else
echo "You are getting mature!"

fi
