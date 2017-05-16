# rails g migration AddSubjectToGradeSubject subject:references 
class AddSubjectToGradeSubject < ActiveRecord::Migration
  def change
    add_reference :grade_subjects, :subject, index: true, foreign_key: true
  end
end
