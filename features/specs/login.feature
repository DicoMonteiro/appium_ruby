#language: pt

Funcionalidade: Login
    Para que eu possa fazer compras dos itens clássicos
    Sendo um usuário cadastrado
    Posso me autenticar pela tela de login

    @login_happy
    Cenario: Usuário logado 

        Dado que acesso a tela de login
        Quando eu faço login com "tony@stark.com" e "pass123"
        Então posso ver a tela minha conta

    @login_happiless
    Esquema do Cenario: Tentar logar

        Dado que acesso a tela de login
        Quando eu faço login com <email> e <senha>
        Então devo ver <msg> como popup

    Exemplos: 
      | email                   | senha     | msg                                 |
      | "tony@stark.com"        | "123pass" | "Usuário e/ou senha inválidos."     |
      | "adam.warlok#yahoo.com" | "123pass" | "Usuário e/ou senha inválidos."     |
      | ""                      | "123pass" | "Todos os campos são obrigatórios." |
      | "tony@stark.com"        | ""        | "Todos os campos são obrigatórios." |


    @last_try
    Cenario: Login na 3a tentativa

        Dado que acesso a tela de login
        Quando logo sem sucesso 2 vezes
        E faço login na última tentativa
        Então posso ver a tela minha conta

    #@senha_incorreta
    #Cenario: Senha incorreta

    #    Dado que acesso a tela de login
    #    Quando eu faço login com "tony@stark.com" e "123pass"
    #    Então devo ver "Usuário e/ou senha inválidos."

    #@email_incorreto
    #Cenario: Email incorreto

    #    Dado que acesso a tela de login
    #    Quando eu faço login com "adam.warlok#yahoo.com" e "123pass"
    #    Então devo ver "Usuário e/ou senha inválidos."