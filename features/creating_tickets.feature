Feature: Creating Tickets
  This feature creates tickets for projects
  
  Background:
    Given there is a project called "Test project"
    And there are the following users:
      | email       | password |
      | user@pt.com | password |
    And I am signed in as "user@pt.com"
    When I am on the homepage
    When I follow "Test project"
    And I follow "Create Ticket"
  
  Scenario: Creating a ticket
    When I fill in "Title" with "Test ticket 1 title"
    And I fill in "Description" with "Test ticket description"
    And I press "Create Ticket"
    And I should see "Ticket has been created."
    And I should see "Test ticket 1 title" within "h2"
    And I should see "Created by user@pt.com"
    
  Scenario: Creating a ticket with invalid attribute fails
    When I press "Create Ticket"
    Then I should see "Ticket has not been created."
    And I should see "Title can't be blank"
    And I should see "Description can't be blank"