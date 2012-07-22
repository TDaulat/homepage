Given /^There are (\d+) public blog posts in the system$/ do |post_count|
  (1..post_count.to_i).each do |i|
    Post.create!(:title => "Blog post #{i}", :public => 1, :published_at => Time.now)
  end
end

Given /^I am on the main page$/ do
	visit '/'
end

Then /^I should see a listing containing (\d+) posts$/ do |post_count|
  assert_equal page.all('#posts .post').count.to_i, post_count.to_i
end

Then /^I should see a link to view the post archives$/ do
  page.should have_link('Article Archives', href: posts_path)
end