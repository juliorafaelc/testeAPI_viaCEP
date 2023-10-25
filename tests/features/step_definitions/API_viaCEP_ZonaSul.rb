require 'httparty'
require 'pry'

Dado('eu tenha um {string} valido da zona sul de SP') do |cep|
  @cep = cep
end

Quando('eu chamo a API ViaCEP') do
  url = "https://viacep.com.br/ws/#{@cep}/json/"
  @resposta = HTTParty.get(url)
end

Então('deve ter o mesmo {string} dentro da API que o solicitado') do |cep|
  expect(@resposta.fetch'cep').to eql(cep)
end

Então('Deve se encontrar em um {string} pertencente a zona sul') do |bairro|
  expect(@resposta.fetch'bairro').to eql(bairro)
end

Então('deve ter o valor {string} dentro da chave {string}') do |valor, uf|
  valor = @resposta.fetch'uf'
  expect(@resposta.fetch'uf').to eql(valor)
end

Então('deve ter o valor {int} dentro de {string}') do |valor1, ddd|
  ddd = @resposta.fetch'ddd'
  expect(@resposta.fetch'ddd').to eql(ddd)
end