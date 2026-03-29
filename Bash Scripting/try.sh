#!/bin/bash

echo "======= Print Personal Information ======="

name="Avishek"
Address="Samnhaji Nagar, Wagholi, Pune"
ContactNumber=1234567890
datetime=$(date +"%Y-%m-%d %H:%M:%S")

echo "Name: $name"
echo "Address: $Address" 
echo "Contact Number: $ContactNumber"
echo "Date and Time: $datetime"

echo "=========================================="
# ============= Oprtators===============
echo "=== Arithmetic Operators ==="
a=10
b=3
echo "a=$a, b=$b"
echo "a+b = $((a+b))"
echo "a-b = $((a-b))"
echo "a*b = $((a*b))"
echo "a/b = $((a/b))"
echo "a%b = $((a%b))"
((a++))
echo "a++ = $a"
((b--))
echo "b-- = $b"
echo "=========================================="
echo -e "\n=== Relational Operators ==="
if [ $a -gt $b ]; then echo "a > b"; fi
if [ $a -lt 20 ]; then echo "a < 20"; fi
if [ $a -eq 11 ]; then echo "a == 11"; fi
echo "=========================================="
echo -e "\n=== Boolean Operators ==="
if [ $a -gt 5 -a $b -lt 5 ]; then echo "Both conditions true"; fi
if [ $a -gt 5 -o $b -gt 10 ]; then echo "At least one condition true"; fi
echo "=========================================="
echo -e "\n=== Bitwise Operators ==="
x=6   # 110 in binary
y=3   # 011 in binary
echo "x & y = $((x & y))"
echo "x | y = $((x | y))"
echo "x ^ y = $((x ^ y))"
echo "~x = $((~x))"
echo "x << 1 = $((x << 1))"
echo "x >> 1 = $((x >> 1))"
echo "=========================================="
echo -e "\n=== String Comparison Operators ==="
str1="hello"
str2="world"
if [ "$str1" = "hello" ]; then echo "str1 equals hello"; fi
if [ "$str1" != "$str2" ]; then echo "str1 not equal str2"; fi
if [ -n "$str1" ]; then echo "str1 is non-empty"; fi
if [ -z "$empty" ]; then echo "empty string detected"; fi
echo "=========================================="
echo -e "\n=== File Test Operators ==="
file="test.txt"
touch $file
if [ -e "$file" ]; then echo "$file exists"; fi
if [ -f "$file" ]; then echo "$file is a regular file"; fi
if [ -r "$file" ]; then echo "$file is readable"; fi
if [ -w "$file" ]; then echo "$file is writable"; fi
if [ -s "$file" ]; then echo "$file is not empty"; fi
if [ -d "." ]; then echo "Current directory exists"; fi
rm $file
echo "=========================================="


echo -e "\n\n Thanks....!!!!"