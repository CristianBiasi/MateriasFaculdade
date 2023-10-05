total_ate_2000 = 0
total_geral = 0

while True:
    ano = int(input("Digite o ano do veículo: "))
    valor = float(input("Digite o valor do veículo: "))

    if ano <= 2000:
        desconto = valor * 0.12
        total_ate_2000 += 1
    else:
        desconto = valor * 0.07

    valor_pago = valor - desconto

    print("\nValor do desconto: R$", desconto)
    print("Valor a ser pago: R$", valor_pago)

    total_geral += 1

    continuar = input("\nDeseja calcular o desconto de outro veículo? (S/N): ")
    if continuar.upper() != "S":
        break

print("\nTotal de carros com ano até 2000:", total_ate_2000)
print("Total geral de carros:", total_geral)
