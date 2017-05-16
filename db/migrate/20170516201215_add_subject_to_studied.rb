class AddSubjectToStudied < ActiveRecord::Migration
  def change
    add_reference :studieds, :subject, index: true, foreign_key: true
  end
end
