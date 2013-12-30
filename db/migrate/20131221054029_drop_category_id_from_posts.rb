class DropCategoryIdFromPosts < ActiveRecord::Migration
  def up
    remove_column :posts, :category_id
  end

  def down
  end
end
