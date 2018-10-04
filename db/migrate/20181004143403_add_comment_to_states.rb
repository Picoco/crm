class AddCommentToStates < ActiveRecord::Migration[5.2]
  def change
    add_column :states, :comment, :string
  end
end
