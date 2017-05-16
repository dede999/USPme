class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comentario
      t.integer :up
      t.integer :down

      t.timestamps null: false
    end
  end
end
