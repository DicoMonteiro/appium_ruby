
require_relative "android/screens.rb"

class DroidScreens
  attr_accessor :home, :login, :my_account, :product

  def initialize
    @home = Home.new
    @login = Login.new
    @my_account = MyAccount.new
    @product = Product.new
  end

  def popup
    find_element(id: "android:id/message").displayed?
    find_element(id: "android:id/message")
  end

  def popup_confirm
    find_element(id: "android:id/button1").displayed?
    find_element(id: "android:id/button1").click
  end
end
