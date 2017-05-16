class RelatingUserCourse < ActiveRecord::Migration
  def change
    create_table :mycourses do |t|
      t.belongs_to :user, index: true
      t.belongs_to :course, index: true
      t.timestamps
    end
  end
end
