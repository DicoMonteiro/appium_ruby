#language:pt


Funcionalidade: Adicionar item ao carrinho
    Para que eu possa compar jogos clássicos na lojinha
    Sendo um usuário cadastrado
    Posso adicionar itens ao carrinho

    @add_game @login @clean_cart
    Cenario: Usuário logado adiciona produto

        Dado que eu quero comprar o jogo "F-Zero" do "Super Nintendo"
        Quando adiciono este item ao carrinho
        Então devo ver o alerta "Você adicionou F-Zero ao seu carrinho!"

    @clean_cart @temp
    Cenario: Usuário não logado adiciona produto

        Dado que eu quero comprar o jogo "Golden Axe" do "Mega Drive"
        Quando adiciono este item ao carrinho
        Mas preciso fazer login para adicionar o produto
        Então devo ver o alerta "Você adicionou Golden Axe ao seu carrinho!"