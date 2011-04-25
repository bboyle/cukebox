Feature: Webdriver
	As a Ben
	I want to learn webdriver
	So that I can test web applications

  Scenario: webdriver test
    Given I have webdriver working
    When I run the webdriver demo
    Then I should see 'Thanks!' as the page title with webdriver
