class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :score # 1 ou -1
      t.timestamps null: false
    end
  end
end
