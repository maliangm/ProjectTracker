Given /^this project has the following ticket:$/ do |table|
  table.hashes.each do |attributes|
    @project.tickets.create!(attributes)
  end
end

Given /^"([^"]*)" has created the following tickets for the "([^"]*)" project$/ do |user_email, project_name, table|
  user = User.find_by_email!(user_email)
  project = Project.find_by_name!(project_name)
  
  table.hashes.each do |attrs|
    ticket = Ticket.new(attrs)
    ticket.user = user
    ticket.project = project
    
    ticket.save!
  end
end
