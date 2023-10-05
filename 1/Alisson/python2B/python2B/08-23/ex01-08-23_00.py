"""
Faca um programa que leia o nome de 5 pessoa digitados palo(a) usuario e armazene em uma lista de nomes. No final imprima na tela uma mensagem de boas vinda para cad nome armazenado.
EX:
nome = ['Ana', 'Pedro', 'Juao', 'Maria', 'Mario']
Seja bem vindo(a) Ana
Seja bem vindo(a) Pedro
Seja bem vindo(a) Juao
Seja bem vindo(a) Maria
Seja bem vindo(a) Mario
"""
nomes = []
total_nomes = 5

for i in range(total_nomes):
    temp = input(f'Digite o {i+1}° nome: ')
    nomes.append(temp)
#print(nomes)
print('='*15)
for j in range(len(nomes)):
    print(f'Seja bem-vindo(a) {nomes[j].upper()}')
