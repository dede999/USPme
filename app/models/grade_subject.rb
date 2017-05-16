class GradeSubject < ActiveRecord::Base
    belongs_to :grade
    belongs_to :subject
end
