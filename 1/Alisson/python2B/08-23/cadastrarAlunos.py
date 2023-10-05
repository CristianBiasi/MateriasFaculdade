alunos = {}

def cadastrar_aluno(matricula, nome, idade, nota):
    aluno = {
        'nome': nome,
        'idade': idade,
        'nota': nota
    }
    alunos[matricula] = aluno

def listar_alunos():
    for matricula, aluno in alunos.items():
        print(f"Matrícula: {matricula}")
        print(f"Nome: {aluno['nome']}")
        print(f"Idade: {aluno['idade']}")
        print(f"Nota: {aluno['nota']}")
        print()

cadastrar_aluno(1, 'João', 18, 9.5)
cadastrar_aluno(2, 'Maria', 17, 8.0)
cadastrar_aluno(3, 'Pedro', 19, 7.5)

listar_alunos()
