# Aproximação da Função Exponencial (e^x) em Julia

Este repositório contém uma implementação simples em Julia para calcular uma aproximação da função exponencial \( e^x \) usando a Série de Taylor.

## 📘 Descrição

A função `e(x)` calcula o valor de \( e^x \) por meio da soma da série infinita:

\[
e^x = \sum_{n=0}^{\infty} \frac{x^n}{n!}
\]

O algoritmo adiciona sucessivos termos da série até que o termo atual seja pequeno o suficiente para ser considerado zero na precisão de ponto flutuante da máquina.

## 📎 Código

```julia
function e(x)
  termo = 1 
  soma = 1
  i = 1
  while termo > 0
    termo = termo * (x/i)
    soma = soma + termo
    i = i + 1
  end
  return [soma i]
end

y = e(1)
println(y)
