Feature: Hidding Links
  Links and buttons should be hidden from users don't have permission to view/use them.
  
  Background:
      Given there are the following users:
      | email       | password |
      | test@pt.com | password |
  
  Scenario: Sign up and sign in links should be hidden from users that has already signed in
    Given I am signed in as "test@pt.com"
    Then I should not see the "Sign up" link
    And I should not see the "Sign in" link

  Scenario: Sign up and sign in links should be shown to users that has not signed in
    Given I am on the homepage
    Then I should see the "Sign up" link
    And I should see the "Sign in" link