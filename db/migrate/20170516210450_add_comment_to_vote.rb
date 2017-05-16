class AddCommentToVote < ActiveRecord::Migration
  def change
    add_reference :votes, :comment, index: true, foreign_key: true
  end
end
