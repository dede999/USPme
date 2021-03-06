class Course < ActiveRecord::Base
    has_many :grades
    
    # RELACIONAMENTO COM USER
    has_many :mycourses
    has_many :users, through: :mycourses
    
    has_many :comments, as: :commentable
end
