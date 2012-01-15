Feature: Sign in
  In order to let users start to use the system
  They must have somewhere to sign in.
  
  Background:
    Given there are the following users:
      | email       | password |
      | test@pt.com | password |
      
  Scenario: Signing in 
    Given I am signed in as "test@pt.com"
