#!/bin/bash

# Declarando variáveis
num1=10
num2=5

# Adição
soma=$((num1 + num2))
echo "Soma: $soma"

# Subtração
subtracao=$((num1 - num2))
echo "Subtração: $subtracao"

# Multiplicação
multiplicacao=$((num1 * num2))
echo "Multiplicação: $multiplicacao"

# Divisão
divisao=$(((num1+1) / num2))
echo "Divisão: $divisao"

# Módulo
modulo=$(((num1+1) % num2))
echo "Módulo: $modulo"

# Incremento
num1=$((num1 += 2))
echo "num1 após incremento: $num1"

# Decremento
num2=$((num2 -= 2))
echo "num2 após decremento: $num2"

# Incremento pré-fixo
num1=$((++num1))
echo "num1 após incremento pré-fixo: $((num1))"

# Decremento pré-fixo
num2=$((--num2))
echo "num2 após decremento pré-fixo: $num2"

# Exponenciação
potencia=$((num1**num2))
echo "Potência: $potencia"

# Negação
negativo=$((-$num1))
echo "Negação: $negativo"
