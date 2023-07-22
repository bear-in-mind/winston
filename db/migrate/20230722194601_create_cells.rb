class CreateCells < ActiveRecord::Migration[7.0]
  def change
    create_table :cells do |t|
      t.text :content
      t.references :song_attribute, null: false, foreign_key: true

      t.timestamps
    end
  end
end
