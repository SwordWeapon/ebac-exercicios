            #language: pt

            Funcionalidade: Tela de cadastro
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Cenário: Autenticação de cadastro válida
            Dado que eu acesse a página de cliente da EBAC-SHOP
            Quando eu preencher todos os dados obrigatórios: Nome, Sobrenome, País, Endereço, Cidade, CEP, Telefone, E-mail
            Então deverá exibir uma mensagem "Cadastro efetuado com sucesso"

            Cenário: Autenticação de cadastro inválida com dados obrigatórios ausentes
            Dado que eu acesse a página de cliente da EBAC-SHOP
            Quando eu deixar de preencher um ou mais campos obrigatórios: Nome, Sobrenome, País, Endereço, Cidade, CEP, Telefone, E-mail
            Então deverá exibir uma mensagem de alerta "Preencha todos os campos obrigatórios"

            Cenário: Autenticação de cadastro inválida com formato de e-mail incorreto
            Dado que eu acesse a página de cliente da EBAC-SHOP
            Quando eu preencher os dados obrigatórios, mas digitar um e-mail inválido no campo E-mail
            Então deverá exibir uma mensagem de erro "Formato de e-mail inválido"

            Cenário: Retorno ao estado inicial
            Dado que eu preenchi parcialmente o cadastro
            Quando eu clicar no botão "Limpar"
            Então todos os campos deverão ser apagados e o formulário deverá voltar ao estado inicial

            Esquema do Cenário: Cadastro com validações
            Dado que eu acesse a página de cliente da EBAC-SHOP
            Quando eu preencher os campos:

            Exemplos:
            | nome | sobrenome | pais   | endereco      | cidade    | cep      | telefone   | email          | mensagem                              |
            | João | Silva     | Brasil | Rua Exemplo 1 | São Paulo | 12345000 | 1199999999 | joao@email.com | Cadastro efetuado com sucesso         |
            |      | Silva     | Brasil | Rua Exemplo 1 | São Paulo | 12345000 | 1199999999 | joao@email.com | Preencha todos os campos obrigatórios |
            | João | Silva     | Brasil | Rua Exemplo 1 | São Paulo | 12345000 | 1199999999 | joaoemail.com  | Formato de e-mail inválido            |
            | João | Silva     | Brasil | Rua Exemplo 1 | São Paulo |          | 1199999999 | joao@email.com | Preencha todos os campos obrigatórios |
            | João | Silva     | Brasil | Rua Exemplo 1 | São Paulo | 12345000 | 1199999999 |                | Preencha todos os campos obrigatórios |

