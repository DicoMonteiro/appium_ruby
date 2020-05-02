require "appium_lib"
require "appium_console"
require "cucumber"
require "rspec"
require "pry"

# Configuração dos capabilities dentro do env, na inicialização do projeto
# def caps
#   { caps: {
#     platformName = "Android"
#     deviceName = "VirtualDevice"
#     udid = "192.168.56.101:5555"
#     app = (File.join(File.dirname(__FILE__), "app-debug.apk"))
#     appPackage = "qaninja.com.pixel"
#     appActivity = "qaninja.com.pixel.SplashScreen"
#     automationName = "uiautomator2"
#   } }
# end

caps = Appium.load_appium_txt file: File.expand_path("caps/appium.txt", __dir__), verbose: true

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object

wait = Selenium::WebDriver::Wait.new(:timeout => 30)

# driver.manage.timeouts.implicit_wait = 5

# Before { $driver.start_driver }
# After { $driver.driver_quit }
