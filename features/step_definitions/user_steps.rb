Given /^there are the following users:$/ do |table|
  table.hashes.each do |attributes|
    @user = User.new(attributes)
    @user.save
  end
end

Given /^I am signed in as "([^"]*)"$/ do |email|
  @user = User.find_by_email!(email)
  steps %Q{
    Given I am on the homepage
    When I follow "Sign in"
    And I fill in "Email" with "#{@user.email}"
    And I fill in "Password" with "password"
    And I press "Sign in"
    Then I should be on the homepage
    And I should see "Signed in successfully."
  }
end