Feature: Signing up
  Signing up as standard users
  Tickets must be created by a user
  
  Scenario: Sign up
    Given I am on the homepage
    When I follow "Sign up"
    And I fill in "Email" with "user@pt.com"
    And I fill in "Password" with "password"
    Then show me the page
    And I fill in "Password Confirmation" with "password"
    And I press "Sign up"
    Then I should see "Welcome! You have signed up successfully."
    Given I am on the homepage
    When I follow "Sign in"
    And I fill in "Email" with "user@pt.com"
    And I fill in "Password" with "password"
    And I press "Sign in"
    Then I should see "Signed in successfully."
