## Lista -> Vetor (array)
#Listas (sao ED dinamicas -> aumenta ou dominui de tamanho de acordo com os dados armazenados)
# Vetor (sao ED estaticas -> mantem o tamanho fico)
# No python - Nao tem vetor

numeros = [1,4,9,16,25]
print(numeros[1]) # me retorna o valor 4
numeros[1] = 6 # alterando o conteudo armazenado na posicao 1
print(numeros[1])
print(numeros)
print(numeros[2]) ### retorno o item indexado por 2, retorna o valor da posicao 2

# consultar o ultimo elemento, existem duas maneiras
numeros[-1] # comeca a percorrer a lista de tras para frente

# outra forma
print(numeros[len(numeros)-1])

# uniao de listas
outra_lista = [36, 49, 64]
nova_lista = numeros + outra_lista
print(nova_lista)

# adicionar novos elementos na lista
nova_lista.append((9*9))
print(nova_lista)


# corrigir o elemento da posicao 1
nova_lista[1] = 2**2
print(nova_lista)

# percorrer a lista exibindo apenas os valores
for valor in nova_lista:
    print(valor)

# trazer o indice e valor
for indice in range(len(nova_lista)):
    valor = nova_lista[indice]
    print(f'indice = {indice} e valor = {valor}')

# outra maneira
for indice, valor in enumerate(nova_lista):
    print(f'indice = {indice} e valor = {valor}')

