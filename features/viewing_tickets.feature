Feature: Viewing Tickets
  This feature includes the following functionalities:
  Viewing tickets in a list on their project's details page.
  Viewing a specific ticket on its own details page.
  
  Background:
    Given there is a project called "Test project"
    And this project has the following ticket:
      | title                 | description                          |
      | Test project ticket 1 | Description of Test project ticket 1 |
      | Test project ticket 2 | Description of Test project ticket 2 |
    Given I am on the homepage
    When I follow "Test project"
    
  Scenario: View tickets in a list on the project's details page
    Then I should see "Test project ticket 1" within "#tickets"
    And I should see "Test project ticket 2" within "#tickets"
  
  Scenario: View details of a specified ticket
    When I follow "Test project ticket 1"
    Then I should see "Test project ticket 1" within "h2"
    And I should see "Description of Test project ticket 1"
  