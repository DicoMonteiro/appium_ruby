Before do
  driver.start_driver
  driver.manage.timeouts.implicit_wait = 10

  device_tyoe = "android"

  @screen = DroidScreens.new if device_tyoe.eql?("android")
  @screen = IOSScreens.new if device_tyoe.eql?("ios")

  # if (device_tyoe == "android")
  #   @screen = DroidScreens.new
  # else
  #   @screen = IOSScreens.new
  # end
end

# After do |scenario|
#   # scenario.__id__
#   screenshot = driver.screenshot_as("log/#{scenario.__id__}.png")
#   embed(screenshot, "image/png", "Screenshot")
# end

After do
  screenshot = driver.screenshot_as(:base64)
  embed(screenshot, "image/png", "Screenshot")

  driver.quit_driver
end
