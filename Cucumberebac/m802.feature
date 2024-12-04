            #language: pt

            Funcionalidade: Tela de login
            Como aluno do Portal EBAC
            Quero me autenticar
            Para visualizar minhas notas

            Contexto:
            Dado que eu acesse a pág de autenticação do Portal
            Cenário: Autenticação válida
            Quando eu digitar o usuário "usuario@ebac.com.br"
            E a senha "senha#123"
            Então deverá exibir uma mensagem de boas vindas "Olá usuário"

            Cenário: Usuário inexistente
            Quando eu digitar o usuário "usuario@ebac.com.br"
            E a senha "senha#923"
            Então deverá exibir uma mensagem de boas vindas "Usuário inexistente"

            Cenário: Usuário com senha inválido
            Quando eu digitar o usuário "usuario@ebac.com.br"
            E a senha "teste@123"
            Então deverá exibir uma mensagem de alerta: "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu digitar o usuário <usuario>
            E a senha <senha>
            Então deve exibir a mensagem <mensagem> de sucesso

            Exemplos:
            | usuario                | senha       | mensagem       |
            | "usuario@ebac.com.br"  | "teste@123" | "Olá usuário"  |
            | "usuario1@ebac.com.br" | "teste@123" | "Olá usuário1" |
            | "usuario2@ebac.com.br" | "teste@123" | "Olá usuário2" |
