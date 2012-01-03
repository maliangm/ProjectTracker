Feature: Viewing Projects
  In order to view the created projects
  As an admin
  I want to be able to view them in a list
  And I want to be able to view the details of a specified proejct 
  at a separate page.
  
  Background: 
    Given there is a project called "Test project"
    And I am on the homepage
    
  Scenario: Viewing available projects in a list
    Then I should see "Test project" 
  
  Scenario: Viewing a specified project in its details page
    When I follow "Test project"
    Then I should be on the project details page of "Test project"
    And I should see "Test project" within "h2"