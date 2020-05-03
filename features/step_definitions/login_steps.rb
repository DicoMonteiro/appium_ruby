Dado("que acesso a tela de login") do
    # wait.until { driver.find_element(id: "qaninja.com.pixel:id/accountButt").displayed? }
    # sleep 15
    # find_element(id: "qaninja.com.pixel:id/accountButt").click
    @screen.home.go_account
end
  
Quando("eu faço login com {string} e {string}") do |email, pass|
    @screen.login.with(email, pass)
    # find_element(id: "qaninja.com.pixel:id/usernameTxt").send_keys(email)
    # find_element(id: "qaninja.com.pixel:id/passwordTxt").send_keys(senha)
    # find_element(id: "qaninja.com.pixel:id/loginButt").click
end
  
Então("posso ver a tela minha conta") do
    # find_element(id: "qaninja.com.pixel:id/accountButt").displayed?
    # find_element(id: "qaninja.com.pixel:id/accountButt").click
    @screen.home.go_account
    # conta = find_element(id: "qaninja.com.pixel:id/account")
    conta = @screen.my_account.account
    expect(conta.displayed?).to be true
end

Então("devo ver {string} como popup") do |message|
    # find_element(id: "android:id/message").displayed?
    # alert = find_element(id: "android:id/message")
    alert = @screen.popup
    expect(alert.text).to eq message
end


Quando("logo sem sucesso {int} vezes") do |tentativas|
    tentativas.times do
        steps %(
            Quando eu faço login com "tony@stark.com" e "123pass"
        )
        # alert = find_element(id: "android:id/message")
        alert = @screen.popup
        expect(alert.displayed?).to be true
        back
    end
end
  
Quando("faço login na última tentativa") do
    steps %(
        Quando eu faço login com "tony@stark.com" e "pass123"
    )
end