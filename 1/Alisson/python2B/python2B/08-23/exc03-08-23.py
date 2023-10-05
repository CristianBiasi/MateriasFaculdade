"""
Crie duas listas em python, uma para armazenar o nome e outra lista para armazenar a idade de 5 pessoas. Posteriormente indique quais pessoas tem 18 anos ou mais e quantas pessoas menores de idade.
EX:
Jose, 10 anos
Joaquim, 19 anos
Jailton, 30 anos
Juarez, 5 anos
Joao, 1 anos
--> São maiores de idade: Joaquim, Jailton, Joao
--> São menores de idade: Jose, Juarez
"""
# Criar as listas com nomes e idades
nomes = ["Jose", "Joaquim", "Jailton", "Juarez", "Joao"]
idades = [10, 19, 30, 5, 1]

# Inicializar listas para armazenar os resultados
maiores_de_idade = []
menores_de_idade = []

# Percorrer a lista de idades e classificar as pessoas
for i in range(len(idades)):
    if idades[i] >= 18:
        maiores_de_idade.append(nomes[i])
    else:
        menores_de_idade.append(nomes[i])

# Exibir os resultados
print("São maiores de idade:", ", ".join(maiores_de_idade))
print("São menores de idade:", ", ".join(menores_de_idade))
