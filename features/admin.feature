Feature: As an admin user
  Scenario: Visiting the admin section
    Given I am currently logged in with the admin priviledge
    When I visit the admin section
    Then I should see the article management view

Feature: As a non-admin user
  Scenario: Visiting the admin section
    Given I am currently logged in without the admin priviledge
    When I visit the admin section
    Then I should be redirected to the main page
    And I should see an alert indicating that I do not have permission
