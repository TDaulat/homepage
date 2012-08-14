Feature: As a public user
  Scenario: Visiting the site
    Given There are 5 public blog posts in the system
    And I am on the main page
    Then I should see the most recent post
    And I should see a link to view the post archives

  Scenario: Autheticating via facebook
    Given I am not currently logged in
    And I am on the main page
    Then I should see a link to log in via facebook
    When I log on
    Then I should see a message that I am logged in
    And I should see a ling to log out