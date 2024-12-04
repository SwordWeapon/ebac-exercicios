            #language: pt


            Funcionalidade: Configurar produto na EBAC-SHOP
            Dado que sou um cliente e estou na pagina do produto
            Cenário: Cliente configura produto e adiciona no carrinho
            Quando seleciono a cor do produto
            E tamanho do produto
            E a quantidade do produto
            E clico em "Adicionar ao carrinho"
            Então deverá ser adicionado ao carrinho com as opções escolhidas

            Cenário: Cliente tenta adicionar produtos sem preencher todas as informações
            Quando não seleciono cor, tamanho e quantidade
            E tento adicionar o produto ao carrinho
            Então aparece uma mensagem "Por favor, selecione o tamanho, cor e quantidade"

            Cenário: Cliente tenta adicionar mais de 10 produtos
            Quando seleciono cor, tamanho e quantidade maior que 10
            E tento adicionar o produto ao carrinho
            Então aparece uma mensagem "Por favor, você deve selecionar uma quantidade de até 10 produtos"

            Cenario: Cliente clica no botão "limpar"
            Quando seleciono a cor, tamanho e quantidade
            E clico no botão "limpar"
            Então todas as opções devem voltar ao estado original

            Esquema do Cenário: Configuração de produto com validações
            Dado que sou um cliente na página do produto
            Quando seleciono a cor "<cor>", o tamanho "<tamanho>" e a quantidade "<quantidade>"
            E clico no botão "<botao>"
            Então o resultado esperado é "<mensagem>"

            Exemplos:
            | cor      | tamanho | quantidade | botao     | mensagem                                               |
            | vermelho | M       | 1          | adicionar | Produto adicionado ao carrinho com sucesso             |
            | azul     | G       | 0          | adicionar | Seleções de cor, tamanho e quantidade são obrigatórias |
            | preto    | P       | 11         | adicionar | Limite máximo de 10 produtos por venda                 |
            | branco   | GG      | 2          | limpar    | Todas as opções voltam ao estado original              |
