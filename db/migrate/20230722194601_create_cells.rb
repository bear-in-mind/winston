class CreateCells < ActiveRecord::Migration[7.0]
  def change
    create_table :cells do |t|
      t.text :content
      t.references :song_attribute, null: false, foreign_key: true
      t.references :song, null: false, foreign_key: true
      t.string "ancestry", collation: 'C', null: false
      t.index "ancestry"

      t.timestamps
    end
  end
end
