Given /^I am currently logged in (with|without) the admin priviledge$/ do |with_or_without|
  case with_or_without
  when "with"
    admin = true
  when "without"
    admin = false
  else
    raise "must specify 'with' or 'without'"
  end

  visit '/'
  click_link('Signout') if page.has_link?('Signout')
  link = admin ? "Admin Login" : "User Login"
  click_link(link)
end

Given /^I am currently not logged in$/ do
  visit '/'
  click_link('Signout') if page.has_link?('Signout')
end