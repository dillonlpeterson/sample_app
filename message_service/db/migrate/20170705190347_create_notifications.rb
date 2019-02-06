class CreateNotifications < ActiveRecord::Migration[5.1]
  def change
    create_table :notifications do |t|
      t.string :phone
      t.text :body
      t.string :source_app

      t.timestamps
    end
  end
end
