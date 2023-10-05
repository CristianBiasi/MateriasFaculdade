def consultar_valor_total_estoque(produtos):
    valor_total = 0
    for produto in produtos:
        valor_total += produto.preco * produto.quantidade
    return valor_total

# Exemplo de uso da função para consultar o valor total do estoque
total_estoque = consultar_valor_total_estoque(produtos)
print(f"Valor total do estoque: R$ {total_estoque:.2f}")
