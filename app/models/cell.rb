# == Schema Information
#
# Table name: cells
#
#  id                :bigint           not null, primary key
#  content           :text
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  song_attribute_id :bigint           not null
#
# Indexes
#
#  index_cells_on_song_attribute_id  (song_attribute_id)
#
# Foreign Keys
#
#  fk_rails_...  (song_attribute_id => song_attributes.id)
#
class Cell < ApplicationRecord
  belongs_to :song_attribute
end
