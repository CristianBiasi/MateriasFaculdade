"""
codifique um algoritimo que exiba um algorítimo de variaçao de temperatura durante a semana.
Por exemplo, se as temperaturas forem: 19, 21, 25, 22, 20, 17 e 15°C, de domingo a sábado, respectivamente, o algorítimo deverá exibir:
D:*******************
S:*********************
T:*************************
Q:**********************
Q:********************
S:*****************
S:***************
Suponha que as temperaturas sejam todas positivas e que nenhuma seja maior que 80°C.

"""
temperaturas = [19, 21, 25, 22, 20, 17, 15]
dias_semana = ['D', 'S', 'T', 'Q', 'Q', 'S', 'S']

for temperatura, dia in zip(temperaturas, dias_semana):
    barra_temperatura = '*' * temperatura
    print(f'{dia}: {barra_temperatura}')