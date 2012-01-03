Feature: Editing Projects
  In order to edit the information of existing projects 
  As an admin
  I want to be able to do this in a form
  
  Background: 
    Given there is a project called "Test Project 1"
    When I am on the homepage
    And I follow "Test Project 1"
    And I follow "Edit Project"
    
  Scenario: Editing a project
    And I fill in "Name" with "Test Project 1 Modified"
    And I press "Update Project"
    Then I should be on the project details page of "Test Project 1 Modified"
    And I should see "Project has been updated."
    And I should see "Test Project 1 Modified" within "h2"
