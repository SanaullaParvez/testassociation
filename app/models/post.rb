class Post < ActiveRecord::Base
  attr_accessible :content, :title, :category_ids
  has_many :post_categories
  has_many :categories, :through => :post_categories
  has_many :comments, dependent: :destroy
  #has_and_belongs_to_many :categories




end
