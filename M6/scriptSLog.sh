#!/bin/bash
echo $'\n1. From which ip were the most requests?'
awk '{print $1}' $1|sort|uniq -c|sort -gr|head -1

echo $'\n2. What is the most requested page?'
awk '{print $7}' $1|sort|uniq -c|sort -gr|head -1

echo $'\n3. How many requests were there from each ip?'
echo $'\Requests| IP'
grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" $1|sort|uniq -c|sort -gr|head -20 

echo $'\n4. What non-existent pages were clients referred to?'
awk '{print $7, $9}' $1|grep " 404"|sort|uniq -c

echo $'\n5. What time did site get most requests?'
awk -F\: '{print $2":"$3}' $1|sort|uniq -c|sort -gr|head -1

echo $'\n6. What search bots have accessed the site? (UA + IP)'
awk '{ print $14 " \t " $1}' $1 | grep -i 'bot' | sort | uniq -c | sort -gr
