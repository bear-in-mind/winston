class CreateSongAttributes < ActiveRecord::Migration[7.0]
  def change
    create_table :song_attributes do |t|
      t.references :show, null: false, foreign_key: true
      t.string :title
      t.integer :position
      t.string "ancestry", collation: 'C', null: false
      t.index "ancestry"
      t.boolean :default, default: false

      t.timestamps
    end
  end
end
