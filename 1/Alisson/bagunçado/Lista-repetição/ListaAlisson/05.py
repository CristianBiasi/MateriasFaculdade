total_avaliacoes = int(input("Digite o total de avaliações: "))

soma_notas = 0
for i in range(total_avaliacoes):
    nota = float(input(f"Digite a nota {i+1}: "))
    soma_notas += nota

media = soma_notas / total_avaliacoes

print("A média das notas é:", media)
