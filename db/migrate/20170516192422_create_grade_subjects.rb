class CreateGradeSubjects < ActiveRecord::Migration
  def change
    create_table :grade_subjects do |t|
      t.integer :semester
      t.string :mode # obrigatoria, livre , eletiva
      t.timestamps null: false
    end
  end
end
