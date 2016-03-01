class Subreddit < ActiveRecord::Base
    has_many :posts
    validates :title, presence: true, length: { maximum: 300 }
end
