while True:
    nota = float(input("Digite uma nota entre zero e dez: "))
    if nota >= 0 and nota <= 10:
        break
    else:
        print("Valor inválido. Tente novamente.")

print("Nota válida:", nota)
