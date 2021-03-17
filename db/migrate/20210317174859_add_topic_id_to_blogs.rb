class AddTopicIdToBlogs < ActiveRecord::Migration[6.1]
  def change
    add_reference :blogs, :topic, null: false, foreign_key: true
  end
end
