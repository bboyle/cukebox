# http://watir.com/examples/
# 2011-03-14 benjamins.boyle@gmail.com

# webdriver ruby API
# http://selenium.googlecode.com/svn/trunk/docs/api/rb/_index.html

# watir-webdriver ruby API
# http://rubydoc.info/gems/watir-webdriver/0.2.1


Given /I have (.*) working/ do |w|
	case w
		when 'watir'
			@browser = Watir::Browser.new :firefox
			@browser.goto 'http://bit.ly/watir-example'
		when 'webdriver'
			@driver = Selenium::WebDriver.for :firefox
			@driver.navigate.to 'http://bit.ly/watir-example'
	end
end


When /I run the (.*) demo/ do |w|
	case w
		when 'watir'
			@browser.text_field(:name => "entry.0.single").set "Watir"
			@browser.text_field(:name => "entry.1.single").set "I come here from Australia. \n The weather is great here."
			@browser.radio(:value => "Watir").set
			#@browser.radio(:value => "Watir").clear
			@browser.checkbox(:value => "Ruby").set
			@browser.checkbox(:value => "Python").set
			@browser.checkbox(:value => "Python").clear
			#@browser.select_list(:name => "entry.6.single").clear
			#puts @browser.select_list(:name => "entry.6.single").options
			@browser.select_list(:name => "entry.6.single").select "Chrome"
			@browser.button(:name => "submit").click
		when 'webdriver'
			@driver.find_element(:name => 'entry.0.single').send_keys 'Watir'
			@driver.find_element(:name => 'entry.1.single').send_keys "I come here from Australia. \n The weather is great here."
			@driver.find_element(:css => 'input[type=radio][value=Selenium]').click
			@driver.find_element(:css => 'input[type=checkbox][value=Ruby]').click
			@driver.find_element(:css => 'input[type=checkbox][value=Python]').click
			@driver.find_element(:css => 'input[type=checkbox][value=Python]').click
			@driver.find_element(:name => 'entry.6.single').find_element(:css => 'option[value=Chrome]').select
			@driver.find_element(:name => 'submit').click
	end
end


Then /I should see '(.*)' as the page title with (.*)/ do |n,w|
	case w
		when 'watir'
			fail 'Expected: "Your response has been recorded."' unless @browser.text.include? "Your response has been recorded."
			fail 'Expected: "' + n + '" as page title' unless @browser.title == n
		when 'webdriver'
			fail 'Expected: "Your response has been recorded."' unless @driver.find_element(:tag_name => 'body').text.include? "Your response has been recorded."
			fail 'Expected: "' + n + '" as page title' unless @driver.title == n
	end
end
