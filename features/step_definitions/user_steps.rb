Given /^there are the following users:$/ do |table|
  table.hashes.each do |attributes|
    @user = User.new(attributes)
    @user.save
  end
end