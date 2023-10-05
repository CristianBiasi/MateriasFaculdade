#Programa que imprime a quatidade de numeros pares de 100 até 200.

iterador = 0
contador_pares = 0
while iterador <= 200:
    if iterador %2 == 0:
        contador_pares += 1
        print(f'{iterador} par')
    else:
        print(f'{iterador} impar')

    iterador = iterador + 1

print(f'Temos {contador_pares} numeros pares neste intervalo')
