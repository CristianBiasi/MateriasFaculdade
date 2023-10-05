n = int(input("Digite a quantidade de números (N): "))

for i in range(n):
    numero = float(input("Digite um número: "))

    if numero > 0:
        print("Positivo")
    elif numero < 0:
        print("Negativo")
    else:
        print("Zero")
