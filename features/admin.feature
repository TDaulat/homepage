Feature: Visiting the admin section
  Scenario: As an admin user
    Given I am currently logged in with the admin priviledge
    When I visit the admin section
    Then I should see the dashboard

  Scenario: As a non admin
    Given I am currently logged in without the admin priviledge
    When I visit the admin section
    Then I should be redirected to the main page

  Scenario: When not logged in
    Given I am currently not logged in
    When I visit the admin section
    Then I should be redirected to the main page