# rails g migration AddGradeToGradeSubject grade:references    
class AddGradeToGradeSubject < ActiveRecord::Migration
  def change
    add_reference :grade_subjects, :grade, index: true, foreign_key: true
  end
end
