class Post < ActiveRecord::Base
  attr_accessible :title, :body, :public, :published_at
  
  scope :recent_public, where('posts.public = 1').order("published_at DESC").limit(3)
end