# dada a lista = [12, -2, 4, 8, 29, 45, 78, 36, -17, 2, 12, 8, 3, 3, -52] faca um programa que:
# a) imprima o maior elemento
# b) imprima o menor elemento
# c) imprima os numeros pares
# d) imprima o numero de ocorrencias do primeiro elemento da lista
# e) imprima a media dos elementos
# f) imprima a soma dos elementos de valor negativo

lista = [12, -2, 4, 8, 29, 45, 78, 36, -17, 2, 12, 8, 3, 3, -52]
me = max(lista)
print(f'O maior elemento da lista é {me} ')
print('='*40)

mn = min(lista)
print(f'O menor elemento é {mn} ')
print('='*40)

print('Numeros pares da lista. ')
for numero in lista:
    if numero % 2 == 0:
        print(numero)
print('='*40)

primeiroElemento = lista[0]
ocorrencias = lista.count(primeiroElemento)
print(f'O numero { primeiroElemento} ocorre {ocorrencias} vezes na lista. ') 
print('='*40)

soma = sum(lista)
quantidade = len(lista)
media = soma / quantidade
print(f'A media doa elemento é: {media:.2f} ')
print('='*40)

print('Soma dos elementos de valor negativo ')
somaNegativo = 0
for numero in lista:
    if numero < 0:
        somaNegativo += numero
print(f'A soma dos elementos de valor negativo é: {somaNegativo} ')
