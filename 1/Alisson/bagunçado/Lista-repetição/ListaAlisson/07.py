contador = 0

for _ in range(80):
    numero = float(input("Digite um número: "))
    if numero >= 10 and numero <= 150:
        contador += 1

print("Quantidade de números no intervalo entre 10 e 150:", contador)
