import random

def adivinhe_o_numero():
    numero_secreto = random.randint(1, 100)
    tentativas = 0

    print("Bem-vindo ao jogo Adivinhe o Número!")
    print("Eu escolhi um número entre 1 e 100. Você tem 10 tentativas para adivinhá-lo.")

    while tentativas < 10:
        try:
            palpite = int(input("Digite um número: "))
        except ValueError:
            print("Por favor, digite um número válido.")
            continue

        if palpite < 1 or palpite > 100:
            print("O número deve estar entre 1 e 100.")
            continue

        tentativas += 1

        if palpite < numero_secreto:
            print("O número correto é maior que", palpite)
        elif palpite > numero_secreto:
            print("O número correto é menor que", palpite)
        else:
            print("Parabéns! Você adivinhou o número correto em", tentativas, "tentativas.")
            break

    if tentativas == 10:
        print("Suas 10 tentativas acabaram. O número correto era", numero_secreto)

    jogar_novamente = input("Deseja jogar novamente? (s/n): ")
    if jogar_novamente.lower() == "s":
        adivinhe_o_numero()
    else:
        print("Obrigado por jogar!")

adivinhe_o_numero()