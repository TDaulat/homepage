class WelcomeController < ApplicationController
  def index
    @posts = Post.recent_public
  end
end