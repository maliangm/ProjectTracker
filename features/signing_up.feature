Feature: Signing up
  Signing up as standard users
  Tickets must be created by a user
  
  Scenario: Sign up
    Given I am on the homepage
    When I follow "Sign up"
    And I fill in "Email" with "user@pt.com"
    And I fill in "Password" with "password"
    And I fill in "Password confirmation" with "password"
    And I press "Sign up"
    Then I should be on the homepage
    And I should see "Welcome! You have signed up successfully."
    