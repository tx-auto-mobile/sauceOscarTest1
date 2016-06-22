require 'rubygems'
require 'spec'
require 'appium_lib'
require 'sauce_whisk'
require 'test/unit/assertions'
require_relative '../../page_objects/landing_page'
require_relative '../../page_objects/generic'
require_relative '../../page_objects/new_popup'

desired_caps = Appium.load_appium_txt file: File.expand_path('./', __FILE__), verbose: true

class AppiumWorld
  include LandingPage
  include Generic
  include NewPopup
  include Test::Unit::Assertions
end

# Load the desired configuration from appium_sauce.txt, create a driver then
# Add the methods to the world

Appium::Driver.new(desired_caps)
Appium.promote_appium_methods AppiumWorld

#World(Test::Unit::Assertions)
#World(Elements::LandingPage)


World do
  AppiumWorld.new
end

Before {
  $driver.start_driver
}
#After { $driver.driver_quit }