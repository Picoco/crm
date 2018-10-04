class AddStateToContacts < ActiveRecord::Migration[5.2]
  def change
    add_reference :contacts, :state, foreign_key: true
  end
end
