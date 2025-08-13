#!/bin/bash

echo "Digite o primeiro numero:"
read  num1

echo "Digite o segundo numero:"
read num2

echo "Escolha a operação a operacao (+,-,/,*)"
read operacao

case $operacao in
+) resultado=$(echo "$num1 + $num2" | bc);;
-) resultado=$(echo "$num1 - $num2" | bc);;
\*) resultado=$(echo "$num1 * $num2" | bc);;
/) resultado=$(echo "scale=2; $num1 / $num2" | bc);;
*) echo "Operacap invalida"; exit 1;;

esac

echo "Resultado : $resultado"