class Subject < ActiveRecord::Base
    # RELACIONAMENTO COM RGADE
    has_many :gradeSubjects
    has_many :grades, through: :gradeSubjects
    
    has_many :studieds
    has_many :mycourses, through: :studieds
    
    has_many :comments, as: :commentable
end
