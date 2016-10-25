class User < ApplicationRecord
  rolify
  after_create :assign_default_role
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  validates_presence_of :email

  def assign_default_role
     self.add_role(:user) if self.roles.blank?
  end
    
end
