require 'httparty'

Dado('um CEP válido {string}') do |cep|
  @cep = cep  
end

Quando('eu solicito um pedido GET para a API do ViaCEP') do
  url = "https://viacep.com.br/ws/#{@cep}/json/"
  @resposta = HTTParty.get(url)
end

Então('a resposta da API deve ser {int}') do |int|
  expect(@resposta.code).to eql(int)    
end

Então('a classe da variável deve ser um hash com {int} chaves') do |int|
  expect(@resposta.length).to eql(int)
end

Então('o valor da chave {string} na resposta da API deve ser igual a {string}') do |chave, valor|
  valor = @resposta.fetch'ddd'
  expect(@resposta.fetch'ddd').to eql(valor)
end

Então('o valor da chave {string} deve ser {string}') do |chave1, valor1|
  valor1 = @resposta.fetch'uf'
  expect(@resposta.fetch'uf').to eql(valor1)
end