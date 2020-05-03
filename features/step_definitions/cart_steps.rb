
Dado("que eu quero comprar o jogo {string} do {string}") do |item, cat|
    # binding.pry
    @screen.home.select_cat(cat)
    # binding.pry
    @screen.product.select_product(item)
end

Quando("adiciono este item ao carrinho") do
    @screen.product.add_to_cart
end

Quando("preciso fazer login para adicionar o produto") do
    alert = @screen.popup
    expect(alert.text).to eq "Você deve estar logado para adicionar um produto!"
    @screen.popup_confirm
    @screen.login.with(@user[:email], @user[:pass])
    @screen.product.add_to_cart
end

Então("devo ver o alerta {string}") do |message|
    alert = @screen.popup
    expect(alert.text).to eq message
end