n_alunos = 10
notas = []
for i in range(n_alunos):
    nota = float(input('Digite nota: '))
    notas.append(nota)
    print(notas)

soma = 0
for indice in range(len(notas)):
    soma = soma +notas[indice]
    #print(f'soma parcial {soma})
####
# sum - soma dos valores presentes na lista
# len - a quantidade de valores presentes na lista
media = sum(notas)/len(notas)
print(f'media final={media}')
