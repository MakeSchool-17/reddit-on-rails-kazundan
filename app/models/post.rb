class Post < ActiveRecord::Base
    belongs_to :user
    has_many :comments
    belongs_to :subreddit
    validates :title, presence: true
    validates :content, presence: true
end
