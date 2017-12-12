Quando("buscar o cep {string} na API") do | cep |
    url = 'https://viacep.com.br/ws/' + cep + '/json/'
    @resposta = HTTParty.get(url)
    puts @resposta['logradouro'] + ', ' + @resposta['bairro']
    puts @resposta['localidade'] + '/' + @resposta['uf']
    puts 'CEP: ' + @resposta['cep']
  end
  
  Entao("a resposta conterá a mensagem {string}") do | mensagem |
    expect(@resposta.message).to eq(mensagem)
  end
  
  Entao("o status code da resposta será {int}") do | status_code |
    expect(@resposta.code).to eq(status_code)
  end