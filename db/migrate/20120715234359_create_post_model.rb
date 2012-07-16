class CreatePostModel < ActiveRecord::Migration
  def up
    create_table :posts do |t|
      t.string      :description
      t.text    :body
      t.datetime    :published_at
      t.boolean     :public
      t.timestamps
    end
  end

  def down
    drop_table :posts
  end
end
