Feature: Visiting the dashboard
  Scenario: Viewing and editing drafts
    Given I am currently logged in with the admin priviledge
    And There is 3 draft articles
    When I visit the admin section
    Then I should see 3 draft articles
    When I click to edit the first draft article
    Then I should see the edit view of the article

  Scenario: Making a draft article public
    Given I am currently logged in with the admin priviledge
    And There is 1 draft article
    When I visit the admin section
    Then I should see a draft article with the title "A new draft"
    When I click to make the first article puclic
    Then I should see an alert prompting for confirmation
    When I click ok to confirm
    And I navigate to the main page
    Then I should see an article with the title "A new draft"

  Scenario: Creating a new draft article
    Given I am currently logged in with the admin priviledge
    When I visit the admin section
    Then I should see a link to create a new article
    When I click to create a new article
    Then I should see the create form for a new article