class CreateSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.integer :position
      t.string "ancestry", collation: 'C', null: false
      t.index "ancestry"
      t.references :show, null: false, foreign_key: true

      t.timestamps
    end
  end
end
