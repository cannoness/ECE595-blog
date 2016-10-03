class User < ApplicationRecord
  rolify
   has_many :comments
   has_many :posts
end
