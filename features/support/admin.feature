Feature: As a user
  Scenario: Visiting the admin section
    Given I am a loggin in user and not an admin user
    And I am on the admin section
    Then I should be redirected to the welcome page
    And I should see a message that the area is restricted