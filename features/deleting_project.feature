Feature: Deleting Projects
  In order to delete needless projects
  As an admin
  I want to be able to click a button and make them gone
  
  Background:
    Given there is a project called "Test Project"
    
    
  Scenario: Deleting a project
    Given I am on the homepage
    When I follow "Test Project"
    And I follow "Delete Project"
    Then I should be on the homepage
    And I should see "Project has been deleted."
    And I should not see "Test Project"
    
