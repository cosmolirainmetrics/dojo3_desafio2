#language: pt
#utf-8

@get
Funcionalidade: Consultar cep
    Eu como aplicação cliente
    Quero consultar um cep no site do viacep
    Para listá-lo em uma determinada tela

Contexto: Ter acesso a API

Cenario: Buscar um determinado cep na API
    Quando buscar o cep "06460000" na API
    Entao a resposta conterá a mensagem "OK"
    E o status code da resposta será 200