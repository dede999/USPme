class AddMycourseToStudied < ActiveRecord::Migration
  def change
    add_reference :studieds, :mycourse, index: true, foreign_key: true
  end
end
