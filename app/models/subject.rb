class Subject < ActiveRecord::Base
    # RELACIONAMENTO COM RGADE
    has_many :gradeSubjects
    has_many :grades, through: :gradeSubjects
end
