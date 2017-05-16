class CreateGradeSubjects < ActiveRecord::Migration
  def change
    create_table :grade_subjects do |t|
      t.string :semester
      t.string :mode
      t.timestamps null: false
    end
  end
end
