# == Schema Information
#
# Table name: song_attributes
#
#  id         :bigint           not null, primary key
#  ancestry   :string           not null
#  default    :boolean          default(FALSE)
#  position   :integer
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  show_id    :bigint           not null
#
# Indexes
#
#  index_song_attributes_on_ancestry  (ancestry)
#  index_song_attributes_on_show_id   (show_id)
#
# Foreign Keys
#
#  fk_rails_...  (show_id => shows.id)
#
class SongAttribute < ApplicationRecord
  belongs_to :show
  has_many :cells
end
