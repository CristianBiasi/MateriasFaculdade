print('---FOR---')
notas3 = [8.0,5.5,1.5,9,10,15]
# exemplo do for para percorrer a ED
soma = 0
for indice in range(len(notas3)):
    #print(indice, end='>>>>')
    #print(notas3[indice])
    soma = soma + notas3[indice]
    #print(f'soma parcial {soma}')
    ###
    media = soma/len(notas3)
    print(f'media final={media}')
    