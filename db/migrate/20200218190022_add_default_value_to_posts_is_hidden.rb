class AddDefaultValueToPostsIsHidden < ActiveRecord::Migration[6.0]
  def change
    change_column :posts, :is_hidden, :boolean, default: false, null: false
  end
end