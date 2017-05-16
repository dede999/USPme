class Grade < ActiveRecord::Base
    belongs_to :courses
    
    # RELACIONAMENTO COM RGADE
    has_many :gradeSubjects
    has_many :subjects, through: :gradeSubjects
end
