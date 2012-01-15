Feature: Creating Comments
  In order to track the states of the tickets
  As a user
  I want to be able to leave comments
  
  Background:
    Given there is a project called "Test project"
    And there are the following users:
    | email       | password |
    | user@pt.com | password |
    And "user@pt.com" has created the following tickets for the "Test project" project:
      | title                       | description |
      | Test project ticket 1 title | Test project ticket 1 description |
    And I am signed in as "user@pt.com"
    When I follow "Test project"
    And I follow "Test project ticket 1 title"
    And I follow "New Comment"
    Then I should see "New Comment for Test project ticket 1 title"
    

  Scenario: Creating a comment
    When I fill in "Text" with "ticket 1 comment 1"
    And I press "Create Comment"
    Then I should see "Comment has been created."
    And I should see "ticket 1 comment 1" within "#comments"

  Scenario: Creating a comment without text will fail
    When I press "Create Comment"
    Then I should see "Comment has not been created."
    And I should see "Text can't be blank"
