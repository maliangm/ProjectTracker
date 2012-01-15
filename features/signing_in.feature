Feature: Sign in
  In order to let users start to use the system
  They must have somewhere to sign in.
  
  Background:
    Given there are the following users:
      | email       | password |
      | test@pt.com | password |
      
  Scenario: Signing in 
    Given I am on the homepage
    When I follow "Sign in"
    And I fill in "Email" with "test@pt.com"
    And I fill in "Password" with "password"
    And I press "Sign in"
    Then I should be on the homepage
    Then show me the page
    And I should see "Signed in successfully."