class CreateShowUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :show_users do |t|
      t.references :show, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :roles, array: true, default: []
      t.string :displayed_columns, array: true, default: []
      t.timestamps
    end
  end
end
