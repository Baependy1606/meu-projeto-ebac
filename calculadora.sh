#!/bin/bash
# Script simples de calculadora

echo "Escolha uma operação:"
echo "1. Adição"
echo "2. Subtração"
echo "3. Multiplicação"
echo "4. Divisão"

read -p "Digite o número da operação desejada (1/2/3/4): " operation

read -p "Digite o primeiro número: " num1
read -p "Digite o segundo número: " num2

case $operation in
    1)
        result=$(($num1 + $num2))
        echo "Resultado: $result"
        ;;
    2)
        result=$(($num1 - $num2))
        echo "Resultado: $result"
        ;;
    3)
        result=$(($num1 * $num2))
        echo "Resultado: $result"
        ;;
    4)
        if [ $num2 -eq 0 ]; then
            echo "Erro: Divisão por zero!"
        else
            result=$(($num1 / $num2))
            echo "Resultado: $result"
        fi
        ;;
    *)
        echo "Opção inválida"
        ;;
esac
