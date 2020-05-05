
Dado("que eu quero comprar o jogo {string} do {string}") do |item, cat|
    # binding.pry
    @screen.home.select_cat(cat)
    # binding.pry
    @screen.product.select_product(item)
end

Dado("que eu adicionei os seguintes itens  no meu carrinho:") do |table|
   products = table.hashes
   products.each do |product|
        @screen.home.select_cat(product['categoria'])
        @screen.product.select_product(product['produto'])
        @screen.product.add_to_cart
        @screen.popup_confirm
        # 2.times { @screen.home.go_back }
        2.times { @screen.home.go_back } if DEVICE.eql?("android")
   end
   @screen.home.go_to_cart
   @screen.cart.refresh
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

Quando("eu finalizo a minha compra com a conta:") do |table|
  @screen.cart.checkout
  @screen.paypal_login(table.rows_hash)
  @screen.pay_pal
  @screen.wait_popup("Pixel")
end    

Então("devo ver o alerta {string}") do |message|
    alert = @screen.popup
    expect(alert.text).to eq message
end
