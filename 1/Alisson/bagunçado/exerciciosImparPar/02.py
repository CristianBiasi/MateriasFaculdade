#Como fazer a quantidade de numeros pares entre dois numeros

valor1 = int(input('Digite o primeiro numero: '))
valor2 = int(input('Digite o segundo numero: '))

if valor1 < valor2:
    iterador = valor1
else:
    iterador = valor2
    valor2 = valor1

contador_pares = 0
while iterador <= valor2:
    if iterador %2 == 0:
        contador_pares += 1
    print(f'{iterador} par')
else:
    print(f'{iterador} impar')

print(f'Temos {contador_pares} numeros pares neste intervalo')
