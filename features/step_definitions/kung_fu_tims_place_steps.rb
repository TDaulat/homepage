Given /^I am on the main page$/ do
	visit '/'
end
	
Given /^There are (\d+) blog posts$/ do |post_count|
  (1..post_count.to_i).each do |i|
    Post.create!(:title => "Blog post #{i}")
  end
end

Then /^I should see a listing containing (\d+) posts$/ do |post_count|
  assert_equal page.all('#posts .post').count.to_i, post_count.to_i
end

Then /^I should see a link to view the post archives$/ do
  page.should have_link('View Post Archives', href: posts_path)
end