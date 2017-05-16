class Comment < ActiveRecord::Base
    has_many :votes
    has_many :users, through: :votes
    
    belongs_to :commentables, polymorphic: true
end
