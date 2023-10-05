#Como fazer para contar a quatidade de numeros pares entre dois numeros.

v1 = int(input('Primeiro Valor: '))
v2 = int(input('Segundo Valor: '))

iterador = min(v1,v2)

contador_pares = 0
while iterador <= max (v1,v2):
    if iterador %2 == 0:
        contador_pares += 1
        print(f'{iterador} par')
    else:
        print(f'{iterador} impar')

    iterador = iterador + 1

print(f'Temos {contador_pares} numeros pares neste intervalo')
