Feature: As a public user
	Scenario: Visiting the site
    Given I am on the main page
    And There are 5 blog posts
    Then I should see a listing containing 3 posts
    And I should see a link to view the post archives