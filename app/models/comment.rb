class Comment < ApplicationRecord
  resourcify
  belongs_to :user
  belongs_to :post
  validates_presence_of :post_id
  validates_presence_of :user_id
  validates_presence_of :body
end
