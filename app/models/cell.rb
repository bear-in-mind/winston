# == Schema Information
#
# Table name: cells
#
#  id                :bigint           not null, primary key
#  ancestry          :string           not null
#  content           :text
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  song_id           :bigint           not null
#  song_attribute_id :bigint           not null
#
# Indexes
#
#  index_cells_on_ancestry           (ancestry)
#  index_cells_on_show_id            (show_id)
#  index_cells_on_song_attribute_id  (song_attribute_id)
#
# Foreign Keys
#
#  fk_rails_...  (show_id => shows.id)
#  fk_rails_...  (song_attribute_id => song_attributes.id)
#
class Cell < ApplicationRecord
  has_ancestry

  belongs_to :song
  belongs_to :song_attribute
end
