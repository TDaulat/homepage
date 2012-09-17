When /^I visit the admin section$/ do
  visit '/admin'
end

#Then steps############################################

Then /^I should see the dashboard$/ do
  uri = URI.parse(current_url)
  "#{uri.path}".should == admin_path
end

Then /^I should be redirected to the main page$/ do
  uri = URI.parse(current_url)
  "#{uri.path}".should == root_path
end