#language: pt

Funcionalidade: Validar os CEPs e todos seus valores

Esquema do Cenário: solicitar um CEP válido
  Dado um CEP válido <cep>
  Quando eu solicito um pedido GET para a API do ViaCEP
  Então a resposta da API deve ser 200
  E a classe da variável deve ser um hash com 10 chaves
  E o valor da chave "DDD" na resposta da API deve ser igual a '11'
  E o valor da chave "UF" deve ser "SP"

Exemplos:
  | cep        |
  | '04902170' |
  | '04763030' |
  | '02611000' |
  | '02131040' |  
  | '03289110' |
  | '03295100' |
  | '05576100' |
  | '05423180' |
