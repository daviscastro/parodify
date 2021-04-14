            #Language: pt

            'Funcionalidade: Login'
            Sendo um usuário previamente cadastrado
            Quero acessar o sistema com meu email e senha
            Para que eu possa ter acesso as playlists do Parodify
                
                @smoke
                Cenario: Login do usuário

                    Dado que acesso a página login
                    Quando submeto minhas credenciais com: "davis@bol.com.br" e "pwd123"
                    Então devo ser redirecionado para a área logada

                Esquema do Cenario: Tentativa de login

                    Dado que acesso a página login
                    Quando submeto minhas credenciais com: "<email>" e "<senha>"
                    Então devo ver a mensagem de erro: "Opps! Dados de acesso incorretos!"

                    Exemplos:
                        | email              | senha  | 
                        | ddpvto@456.com.br  | abc123 |
                        |                    |        | 
                        | davisrob@gmail.com |        |
                        | ddpvto@456.com.br  |        |