# Exercício 2
# Programa que lê uma matriz 3x3 e multiplica os elementos da diagonal principal
# da matriz por um número k. Imprime a matriz antes e depois da multiplicação.

# Função para multiplicar a diagonal principal por k
def multiplicar_diagonal(matriz, k):
    for i in range(len(matriz)):
        matriz[i][i] *= k

# Função para imprimir a matriz
def imprimir_matriz(matriz):
    for linha in matriz:
        print("|", end=" ")
        for elemento in linha:
            print(f"{elemento:3}", end=" ")
        print("|")

# Matriz 3x3 de exemplo
matriz_3x3 = [[4, 6, 9],
              [3, 2, 7],
              [1, 2, 5]]

# Número k de exemplo
k = 5

# Imprimir a matriz original
print("Matriz original:")
imprimir_matriz(matriz_3x3)

# Multiplicar a diagonal principal por k
multiplicar_diagonal(matriz_3x3, k)

# Imprimir a matriz após a multiplicação
print("\nMatriz após a multiplicação:")
imprimir_matriz(matriz_3x3)
