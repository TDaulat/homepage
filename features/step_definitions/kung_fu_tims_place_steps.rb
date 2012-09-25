Given /^There are (\d+) public blog posts in the system$/ do |post_count|
  (1..post_count.to_i).each do |i|
    Post.create!(:title => "Blog post #{i}", :public => 1, :published_at => Time.now)
  end
end

Given /^I navigate to the main page$/ do
	visit '/'
end

Then /^I should see the most recent post$/ do
  assert_equal page.all('#posts .post').count.to_i, 1
end

Then /^I should see a link to view the post archives$/ do
  page.should have_link('Article Archives', href: posts_path)
end

Then /^I should see an article with the title "(.*?)"$/ do |title|
  pending # express the regexp above with the code you wish you had
end