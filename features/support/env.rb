require 'rubygems'
require 'spec'
require 'appium_lib'
require 'sauce_whisk'
require 'test/unit/assertions'
require_relative '../../page_objects/landing_page'
require_relative '../../page_objects/font'
require_relative '../../page_objects/generic'
require_relative '../../page_objects/new_popup'
require_relative '../../page_objects/options_items'
require_relative '../../page_objects/settings'
require_relative '../../page_objects/editor_page'

desired_caps_local = Appium.load_appium_txt file: File.expand_path('./', __FILE__), verbose: true
saucelabs = false

class AppiumWorld

  include LandingPage
  include EditorPage
  include Font
  include Generic
  include NewPopup
  include AddOptionsItems
  include SettingsBox
end

# Load the desired configuration from appium_sauce.txt, create a driver then
# Add the methods to the world

desired_caps = {
    caps: {
        platformVersion: "#{ENV['platformVersion']}",
        deviceName: "#{ENV['deviceName']}",
        platformName: "#{ENV['platformName']}",
        app: "#{ENV['app']}",
        deviceOrientation: 'portrait',
        appiumVersion: '1.5.3',
        browserName: ''
    }
}

Appium::Driver.new(desired_caps_local)
Appium.promote_appium_methods AppiumWorld

World(Test::Unit::Assertions)

World do
  AppiumWorld.new
end

Before do
  $driver.start_driver
end

After do |scenario|

  if saucelabs == true
    $driver.driver_quit
    sessionid =  $driver.session_id
    if scenario.passed?
      SauceWhisk::Jobs.pass_job sessionid
    else
      SauceWhisk::Jobs.fail_job sessionid
    end
  end
end