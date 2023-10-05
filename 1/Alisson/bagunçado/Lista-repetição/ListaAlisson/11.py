total_custos = 0
total_vendas = 0

for i in range(40):
    preco_custo = float(input(f"Digite o preço de custo do produto {i+1}: "))
    preco_venda = float(input(f"Digite o preço de venda do produto {i+1}: "))

    total_custos += preco_custo
    total_vendas += preco_venda

    if preco_venda > preco_custo:
        resultado = "Lucro"
    elif preco_venda < preco_custo:
        resultado = "Prejuízo"
    else:
        resultado = "Empate"

    print(f"Resultado para o produto {i+1}: {resultado}\n")

media_custo = total_custos / 40
media_venda = total_vendas / 40

print("Média de preço de custo:", media_custo)
print("Média de preço de venda:", media_venda)
