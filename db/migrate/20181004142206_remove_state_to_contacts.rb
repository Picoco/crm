class RemoveStateToContacts < ActiveRecord::Migration[5.2]
  def change
    remove_column :contacts, :state
  end
end
