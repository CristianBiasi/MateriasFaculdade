for i in range(75):
    idade = int(input(f"Digite a idade da pessoa {i+1}: "))
    
    if idade >= 18:
        print("Maior de idade")
    else:
        print("Menor de idade")
