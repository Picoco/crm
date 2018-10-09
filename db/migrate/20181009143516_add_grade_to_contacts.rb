class AddGradeToContacts < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :grade, :integer
  end
end
