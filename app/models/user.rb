class User < ActiveRecord::Base
  has_many :posts
  has_many :votes
  validates :email, presence: true, length: { maximum: 255 }
end
