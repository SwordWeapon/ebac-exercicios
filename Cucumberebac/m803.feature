Feature: Tela de Cadastro
Como cliente da EBAC-SHOP
Quero concluir meu cadastro
Para finalizar minha compra

Cenário: Cadastro com validações bem-sucedido
Dado que eu acesse a página de cliente da EBAC-SHOP
Quando eu preencher os campos obrigatórios com:
Nome: João
Sobrenome: Silva
País: Brasil
Endereço: Rua Exemplo 1
Cidade: São Paulo
CEP: 12345000
Telefone: 1199999999
E-mail: joao@email.com
Então deverá exibir a mensagem "Cadastro efetuado com sucesso"

Cenário: Falha no cadastro com campo obrigatório ausente
Dado que eu acesse a página de cliente da EBAC-SHOP
Quando eu deixar de preencher o campo obrigatório "Nome" e preencher os outros campos com:
Sobrenome: Silva
País: Brasil
Endereço: Rua Exemplo 1
Cidade: São Paulo
CEP: 12345000
Telefone: 1199999991
E-mail: joao@email.com
Então deverá exibir a mensagem de alerta "Preencha todos os campos obrigatórios"

Cenário: Falha no cadastro por e-mail inválido
Dado que eu acesse a página de cliente da EBAC-SHOP
Quando eu preencher os campos obrigatórios com:
Nome: João
Sobrenome: Silva
País: Brasil
Endereço: Rua Exemplo 1
Cidade: São Paulo
CEP: 12345000
Telefone: 1199999991
E-mail: joaoemail.com
Então deverá exibir a mensagem de erro "Formato de e-mail inválido"

Cenário: Falha no cadastro com CEP ausente
Dado que eu acesse a página de cliente da EBAC-SHOP
Quando eu preencher os campos obrigatórios com:
Nome: João
Sobrenome: Silva
País: Brasil
Endereço: Rua Exemplo 1
Cidade: São Paulo
CEP:
Telefone: 1199999999
E-mail: joao@email.com
Então deverá exibir a mensagem de alerta "Preencha todos os campos obrigatórios"
