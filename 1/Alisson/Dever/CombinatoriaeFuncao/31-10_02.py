'''
02 - Faça uma função que informe o status do aluno a partir da sua média de acordo com a tavela a seguir:
- Nota acima de 6 => 'Aprovado'
- Nota entre 4 e 6 => 'Verificação Suplementar'
- Nota abaixo de 4 => 'Reprovado'
'''
def status_do_aluno():
    media = float(input("Informe a média do aluno: "))
    if media > 6:
        return 'Aprovado'
    elif 4 <= media <= 6:
        return 'Verificação Suplementar'
    else:
        return 'Reprovado'

resultado = status_do_aluno()
print(f"Status do aluno: {resultado}")
