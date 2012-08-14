Feature: As a public user
	Scenario: Visiting the site
    Given There are 5 public blog posts in the system
    And I am on the main page
    Then I should see the most recent post
    And I should see a link to view the post archives