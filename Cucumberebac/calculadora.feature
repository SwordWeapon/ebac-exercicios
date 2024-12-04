            #language: pt

            Funcionalidade: Calculadora
            Usando calculadora do sistema
            para somar dois números.

            Esquema do Cenário: Soma de 2 números
            Dado que eu acesse a calculadora
            Quando eu somar <Num1> + <Num2>
            Então o resultado deve ser <Resultado>

            Exemplos:
            | Num1 | Num2 | Resultado |
            | 20   | 40   | 60        |
            | 25   | 40   | 65        |
            | 30   | 40   | 70        |
            | 10   | 40   | 50        |
            | 21   | 40   | 61        |
            | 22   | 40   | 62        |
            | 9    | 8    | 17        |
