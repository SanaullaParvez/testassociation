class User < ActiveRecord::Base
  attr_accessible :email, :password_hash, :password_salt
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email
  before_save :check
  private
  def check

  end
end
