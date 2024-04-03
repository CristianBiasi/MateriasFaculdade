import requests

def busca_por_uf():
    ufs_brasil = [
        "AC",
        "AL",
        "AP",
        "AM",
        "BA",
        "CE",
        "DF",
        "ES",
        "GO",
        "MA",
        "MT",
        "MS",
        "MG",
        "PA",
        "PB",
        "PR",
        "PE",
        "PI",
        "RJ",
        "RN",
        "RO",
        "RR",
        "SC",
        "SP",
        "SE",
        "TO" 
    ]
    cidades_por_uf = {}
    for uf in ufs_brasil:
        response = requests.get(f"https://servicodados.ibge.gov.br/api/v1/localidades/estados/{uf}/distritos")
        resposta = response.json()
        temp = []
        for lista in resposta:
            nomeMunicipio = lista["nome"]
            temp.append(nomeMunicipio)
        cidades_por_uf[uf] = temp
    return cidades_por_uf

def buscar_todas():
    url = 'https://servicodados.ibge.gov.br/api/v1/localidades/distritos'
    response = requests.get(url)
    lista_cidades = []
    for cidade in response.json():
        resCidades = cidade["municipio"]
        municipio = resCidades["nome"]
        lista_cidades.append(municipio)
        print(municipio)
    return lista_cidades
