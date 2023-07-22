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
#  song_id    :bigint           not null
#
# Indexes
#
#  index_song_attributes_on_ancestry  (ancestry)
#  index_song_attributes_on_song_id   (song_id)
#
# Foreign Keys
#
#  fk_rails_...  (song_id => songs.id)
#
class SongAttribute < ApplicationRecord
  belongs_to :song
end
