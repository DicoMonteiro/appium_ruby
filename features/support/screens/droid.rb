
require_relative "android/screens.rb"

class DroidScreens
  attr_accessor :home, :login, :my_account

  def initialize
    @home = Home.new
    @login = Login.new
    @my_account = MyAccount.new
  end
end
