class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :code # MAC0110 ok
      t.string :name # ok
      t.text :description
      t.text :bibliography
      t.integer :credit_class # 4 ok
      t.integer :credit_work #2 ok
      t.integer :hours # 60h ok
      t.date :activation # ok

      t.timestamps null: false
    end
  end
end
