class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      
      t.integer :credit_class # 4
      t.integer :credit_work #2
      t.integer :hours # 60h
      t.integer :type # semestral, anual, bimestral
      t.date :activation
      
      t.string :code # MAC0110
      t.string :name # 
      t.text :description
      t.text :bibliography

      t.timestamps null: false
    end
  end
end
