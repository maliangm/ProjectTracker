Then /^I should not see the "([^"]*)" link$/ do |text|
  page.should_not have_css("a", :text => text), "Expected not to see link of #{text.inspect}, but did."
end

Then /^I should see the "([^"]*)" link$/ do |text|
  page.should have_css("a", :text => text), "Expected to see link of #{text.inspect}, but didn't."
end