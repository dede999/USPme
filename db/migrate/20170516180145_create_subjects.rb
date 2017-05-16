class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :code # MAC0110
      t.string :name # 
      t.text :description
      t.text :bibliography
      t.integer :credit_class # 4
      t.integer :credit_work #2
      t.integer :hours # 60h
      t.date :activation

      t.timestamps null: false
    end
  end
end
