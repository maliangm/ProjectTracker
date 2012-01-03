Feature: Creating Projects
  In order to have projects to track
  As an admin
  I want to be able to create them easily
    
    Background:
      Given I am on the homepage
      When I follow "New Project"
    
    Scenario: Creating a project
      When I fill in "Name" with "test project"
      And I press "Create Project"
      Then I should be on the project details page of "test project"
      And I should see "Project has been created."
      And I should see "test project"
    
    Scenario: Creating a project without a name fails
      When I press "Create Project"
      Then I should see "Project has not been created."
      And I should see "Name can't be blank"
