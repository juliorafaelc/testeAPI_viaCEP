#language: pt

Funcionalidade: Deve Validar a API ViaCEP da Zona Sul de São Paulo.

Esquema do Cenário: Solicitar o CEP da API.
  Dado eu tenha um <cep> valido da zona sul de SP
  Quando eu chamo a API ViaCEP
  Então a resposta da API deve ser 200
  E deve ter o mesmo <cep> dentro da API que o solicitado
  E Deve se encontrar em um <bairro> pertencente a zona sul
  E deve ter o valor "SP" dentro da chave "UF"
  E deve ter o valor 11 dentro de "DDD"

Exemplos:
  | cep         | bairro          |
  | "04884-210" | "Parelheiros"   |
  | "04763-030" | "Socorro"       |
  | "04911-030" | "Guarapiranga"  |
  | "05859-030" | "Capão Redondo" |
  | "04753-060" | "Santo Amaro"   |
  | "04309-011" | "Jabaquara"     |
  | "04405-130" | "Cidade Ademar" |
  | "04102-000" | "Vila Mariana"  |
  | "04203-050" | "Ipiranga"      |
