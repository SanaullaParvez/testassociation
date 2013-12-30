class PostCategory < ActiveRecord::Base
  attr_accessible :post_id, :category_id
  belongs_to :post
  belongs_to :category
  # attr_accessible :title, :body
end
