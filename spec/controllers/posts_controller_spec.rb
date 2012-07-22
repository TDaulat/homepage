require File.dirname(__FILE__) + '/../spec_helper'

describe PostsController do
  describe "GET index" do
    before(:each) do
      @mock_posts = [
        mock_model(Post, :title => 'Post 1'),
        mock_model(Post, :title => 'Post 2'),
        mock_model(Post, :title => 'Post 3')
      ]
      Post.stub!(:all).and_return(@mock_posts)
    end

    it "should be success" do
      get :index
      response.should be_success
    end

    it "should find all posts" do
      Post.should_receive(:all).and_return(@mock_posts)
      get :index
    end

    it "should make the blog posts available to the views" do
      get :index
      assigns[:posts].should == @mock_posts
    end
  end

  describe "GET new" do
    it "should be success" do
      get :index
      response.should be_success
    end
  end

  describe "POST create" do
    before(:each) do
      @params = {:post => {:title => 'new article'}}
      @post = mock_model(Post)
      Post.stub!(:create).and_return(true)
    end
    it "should be success" do
      post :create, @params
      response.should be_success
    end

    it "should create the post" do
      Post.should_receive(:create).with('title' => 'new article').and_return(:true)
      post :create, @params
    end
  end

  describe "GET show" do
    before(:each) do
      @post = mock_model(Post)
      Post.stub!(:find).and_return(@post)
    end

    it "should be success" do
      get :show, :id => 13
      response.should be_success
    end

    it "should find the post" do
      Post.should_receive(:find).with('13').and_return(@post)
      get :edit, :id => 13
    end
  end

  describe "GET edit" do
    before(:each) do
      @post = mock_model(Post)
      Post.stub!(:find).and_return(@post)
    end

    it "should be success" do
      get :edit, :id => 13
      response.should be_success
    end

    it "should find the post" do
      Post.should_receive(:find).with('13').and_return(@post)
      get :edit, :id => 13
    end
  end

  describe "PUT update" do
    before(:each) do
      @params = {:id => 13, :post => {:title => 'update title'}}
      @post = mock_model(Post)
      @post.stub!(:update_attributes).and_return(true)
      Post.stub!(:find).and_return(@post)
    end

    it "should be success" do
      put :update, @params
      response.should be_success
    end

    it "should find the post" do
      Post.should_receive(:find).with('13').and_return(@post)
      put :update, @params
    end

    it "should update the post" do
      @post.should_receive(:update_attributes).with('title' => 'update title').and_return(true)
      put :update, @params
    end
  end

  describe "DELETE destroy" do
    before(:each) do
      @post = mock_model(Post)
      @post.stub!(:destroy).and_return(true)
      Post.stub!(:find).and_return(@post)
    end

    it "should be success" do
      delete :destroy, :id => 13
      response.should be_success
    end

    it "should find the post" do
      Post.should_receive(:find).with('13').and_return(@post)
      delete :destroy, :id => 13
    end

    it "should delete the post" do
      @post.should_receive(:destroy).and_return(true)
      delete :destroy, :id => 13
    end
  end
end