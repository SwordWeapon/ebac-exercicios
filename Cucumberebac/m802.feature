            #language: pt

            Funcionalidade: Tela de login
            Como aluno do Portal EBAC
            Quero me autenticar
            Para visualizar minhas notas

            Cenário: Autenticação válida
            Dado que eu acesse a página de autenticação do Portal
            Quando eu digitar o usuário "usuario@ebac.com.br"
            E a senha "senha#123"
            Então deverá exibir a mensagem de boas-vindas "Olá usuário"

            Cenário: Usuário inexistente
            Dado que eu acesse a página de autenticação do Portal
            Quando eu digitar o usuário "usuario_inexistente@ebac.com.br"
            E a senha "senha#923"
            Então deverá exibir a mensagem de erro "Usuário inexistente"

            Cenário: Usuário com senha inválida
            Dado que eu acesse a página de autenticação do Portal
            Quando eu digitar o usuário "usuario@ebac.com.br"
            E a senha "teste@123"
            Então deverá exibir a mensagem de alerta "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticar múltiplos usuários
            Dado que eu acesse a página de autenticação do Portal
            Quando eu digitar o usuário <usuario>
            E a senha <senha>
            Então deverá exibir a mensagem de boas-vindas <mensagem>

            Exemplos:
            | usuario              | senha     | mensagem     |
            | usuario@ebac.com.br  | senha#123 | Olá usuário  |
            | usuario1@ebac.com.br | teste@123 | Olá usuário1 |
            | usuario2@ebac.com.br | teste@123 | Olá usuário2 |

