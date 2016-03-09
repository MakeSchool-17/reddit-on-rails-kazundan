class Comment < ActiveRecord::Base
    belongs_to :post
    validates :content, presence: true
    has_many :votes, as: :votable
end
