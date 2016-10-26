class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  rolify
  after_create :assign_default_role
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  validates_presence_of :email

  def assign_default_role
     self.add_role(:user) if self.roles.blank?
  end
    
end
