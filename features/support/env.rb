require 'rubygems'
require 'bundler/setup'

require 'watir-webdriver'
require 'operawatir'

# PORTABLE_APPS = 'C:\PortableApps'
# Selenium::WebDriver::Firefox.path = PORTABLE_APPS + '\FirefoxPortable\FirefoxPortable.exe'
# Selenium::WebDriver::Chrome.path = PORTABLE_APPS + '\GoogleChromePortable\GoogleChromePortable.exe'

After do
	@browser.quit if @browser
	@driver.quit if @driver
end
