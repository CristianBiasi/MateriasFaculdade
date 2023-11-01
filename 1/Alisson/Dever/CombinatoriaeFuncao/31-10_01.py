'''
O professor deseja dividir uma turma com N alunos em dois grupos: um com M alunos e outro com (N-M) alunos. Faça um programa que leia o valor de N e M informando o numero de combinações possiveis.
-Numero de combinações é igual a N!/(M!*(N-M)!)
-Use funções para evitar repetição de códigos
'''
def fatorial(n):
    if n == 0:
        return 1
    else:
        return n * fatorial(n - 1)

def combinacoes(n, m):
    return fatorial(n) // (fatorial(m) * fatorial(n - m))

n = int(input("Número de alunos: "))
m = int(input("Número de alunos por grupo: "))

combinacoes_resultado = combinacoes(n, m)

print("Número de combinações:", combinacoes_resultado)
