  Feature: Tela de Cadastro
    Como cliente da EBAC-SHOP
    Quero concluir meu cadastro
    Para finalizar minha compra

    Scenario: Cadastro com validações bem-sucedido
        Given que eu acesse a página de cliente da EBAC-SHOP
        When eu preencher os campos obrigatórios com:
            | <Nome>      | João           |
            | <Sobrenome> | Silva          |
            | <País>      | Brasil         |
            | <Endereço>  | Rua Exemplo 1  |
            | <Cidade>    | São Paulo      |
            | <CEP>       | 12345000       |
            | <Telefone>  | 1199999999     |
            | <E-mail>    | joao@email.com |
        Then deverá exibir a mensagem "<Cadastro efetuado com sucesso>"

    Scenario: Falha no cadastro com campo obrigatório ausente
        Given que eu acesse a página de cliente da EBAC-SHOP
        When eu deixar de preencher o campo obrigatório "<Nome>" e preencher os outros campos com:
            | <Sobrenome> | Silva          |
            | <País>      | Brasil         |
            | <Endereço>  | Rua Exemplo 1  |
            | <Cidade>    | São Paulo      |
            | <CEP>       | 12345000       |
            | <Telefone>  | 1199999999     |
            | <E-mail>    | joao@email.com |
        Then deverá exibir a mensagem de alerta "<Preencha todos os campos obrigatórios>"

    Scenario: Falha no cadastro por e-mail inválido
        Given que eu acesse a página de cliente da EBAC-SHOP
        When eu preencher os campos obrigatórios com:
            | <Nome>      | João          |
            | <Sobrenome> | Silva         |
            | <País>      | Brasil        |
            | <Endereço>  | Rua Exemplo 1 |
            | <Cidade>    | São Paulo     |
            | <CEP>       | 12345000      |
            | <Telefone>  | 1199999999    |
            | <E-mail>    | joaoemail.com |
        Then deverá exibir a mensagem de erro "<Formato de e-mail inválido>"

    Scenario: Falha no cadastro com CEP ausente
        Given que eu acesse a página de cliente da EBAC-SHOP
        When eu preencher os campos obrigatórios com:
            | <Nome>      | João           |
            | <Sobrenome> | Silva          |
            | <País>      | Brasil         |
            | <Endereço>  | Rua Exemplo 1  |
            | <Cidade>    | São Paulo      |
            | <CEP>       |                |
            | <Telefone>  | 1199999999     |
            | <E-mail>    | joao@email.com |
        Then deverá exibir a mensagem de alerta "<Preencha todos os campos obrigatórios>"

