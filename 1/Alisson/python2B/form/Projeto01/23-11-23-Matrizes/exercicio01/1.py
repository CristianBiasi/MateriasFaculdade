# Exercício 1
# Programa que armazena os nomes e idades de 10 pessoas em uma matriz
# e imprime o nome da pessoa mais nova

# Inicialização da matriz com nomes e idades
matriz_pessoas = [["João", 25],
                  ["Maria", 30],
                  ["Pedro", 22],
                  ["Ana", 28],
                  ["Carlos", 35],
                  ["Mariana", 20],
                  ["José", 27],
                  ["Luiza", 32],
                  ["Felipe", 18],
                  ["Gabriela", 26]]

# Encontrar a pessoa mais nova na matriz
pessoa_mais_nova = min(matriz_pessoas, key=lambda x: x[1])

# Imprimir o nome da pessoa mais nova
print(f"A pessoa mais nova é: {pessoa_mais_nova[0]}")
