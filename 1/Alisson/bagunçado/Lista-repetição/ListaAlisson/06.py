while True:
    identificacao = input("Digite o número de identificação do aluno: ")
    nota1 = float(input("Digite a primeira nota (entre 0 e 10): "))
    nota2 = float(input("Digite a segunda nota (entre 0 e 10): "))
    nota3 = float(input("Digite a terceira nota (entre 0 e 10): "))
    me = float(input("Digite a nota dos exercícios (entre 0 e 10): "))

    ma = (nota1 + nota2*2 + nota3*3 + me) / 7

    if ma >= 9.0:
        conceito = "A"
    elif ma >= 7.5:
        conceito = "B"
    elif ma >= 6.0:
        conceito = "C"
    elif ma >= 4.0:
        conceito = "D"
    else:
        conceito = "E"

    print("\nNúmero do aluno:", identificacao)
    print("Notas:", nota1, nota2, nota3)
    print("Média dos exercícios:", me)
    print("Média de aproveitamento:", ma)
    print("Conceito:", conceito)

    if conceito in ["A", "B", "C"]:
        print("APROVADO\n")
    else:
        print("REPROVADO\n")

    continuar = input("Deseja digitar as notas de outro aluno? (S/N): ")
    if continuar.upper() != "S":
        break
