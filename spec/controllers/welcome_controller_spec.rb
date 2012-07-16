require File.dirname(__FILE__) + '/../spec_helper'

describe WelcomeController do
  describe "GET index" do
    before(:each) do
      @mock_posts = [
        mock_model(Post, :title => 'Post 1'),
        mock_model(Post, :title => 'Post 2'),
        mock_model(Post, :title => 'Post 3')
      ]
      Post.stub!(:recent).and_return(@mock_posts)
    end
    it "should find the most recent posts" do
      Post.should_receive(:recent).and_return(@mock_posts)
      get :index
    end

    it "should make the blog posts available to the views" do
      get :index
      assigns[:posts].should == @mock_posts
    end
  end
end