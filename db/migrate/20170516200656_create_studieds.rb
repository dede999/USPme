class CreateStudieds < ActiveRecord::Migration
  def change
    create_table :studieds do |t|
      t.integer :semester
      t.string :mode # obrigatoria, livre , eletiva
      t.decimal :score

      t.timestamps null: false
    end
  end
end
