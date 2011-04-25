Feature: Watir
	As Ben
	I want to learn watir
	So that I can test web applications

  Scenario: watir test
    Given I have watir working
    When I run the watir demo
    Then I should see 'Thanks!' as the page title with watir
