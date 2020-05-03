require "pry"

class Home
  def go_account
    find_element(id: "qaninja.com.pixel:id/accountButt").displayed?
    find_element(id: "qaninja.com.pixel:id/accountButt").click
  end

  def select_cat(cat)
    # binding.pry
    find_elements(id: "qaninja.com.pixel:id/cCatNameTxt").text(cat).click
  end
end

class Login
  def with(email, pass)
    find_element(id: "qaninja.com.pixel:id/usernameTxt").send_keys(email)
    find_element(id: "qaninja.com.pixel:id/passwordTxt").send_keys(pass)
    find_element(id: "qaninja.com.pixel:id/loginButt").click
  end
end

class MyAccount
  def account
    find_element(id: "qaninja.com.pixel:id/account")
  end
end

class Product
  def select_product(item)
    find_elements(id: "qaninja.com.pixel:id/cpProdNameTxt").text(item).click
  end

  def add_to_cart
    find_element(id: "qaninja.com.pixel:id/pdAddToCartButt").click
  end
end

# class DetailsProduct
#   def add_cart
#     find_element(id: "qaninja.com.pixel:id/pdAddToCartButt").click
#   end
# end
