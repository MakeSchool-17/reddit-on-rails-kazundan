class User < ActiveRecord::Base
  validates :email, presence: true, length: { maximum: 255 }
end
