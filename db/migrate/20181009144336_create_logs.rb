class CreateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :logs do |t|
      t.string :comment
      t.references :contact, foreign_key: true

      t.timestamps
    end
  end
end
