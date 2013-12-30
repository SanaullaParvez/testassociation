class Category < ActiveRecord::Base
  attr_accessible :description, :title
  validates_presence_of :title_validation, :description


  has_many :post_categories
  has_many :posts, :through => :post_categories

    #has_one :post
  #has_and_belongs_to_many :posts
  validates :type
  scope :published, -> { where(id: 1) }

  private
  def title_validation

  end
end
