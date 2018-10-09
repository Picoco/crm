class RemoveGradeToStates < ActiveRecord::Migration[5.2]
  def change
    remove_column :states, :grade
  end
end
