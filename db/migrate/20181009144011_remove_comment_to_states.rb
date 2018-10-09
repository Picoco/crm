class RemoveCommentToStates < ActiveRecord::Migration[5.2]
  def change
    remove_column :states, :comment
  end
end
