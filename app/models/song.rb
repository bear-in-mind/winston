# == Schema Information
#
# Table name: songs
#
#  id         :bigint           not null, primary key
#  ancestry   :string           not null
#  position   :integer
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  show_id    :bigint           not null
#
# Indexes
#
#  index_songs_on_ancestry  (ancestry)
#  index_songs_on_show_id   (show_id)
#
# Foreign Keys
#
#  fk_rails_...  (show_id => shows.id)
#
class Song < ApplicationRecord
  belongs_to :show
  has_many :cells

  DEFAULT_ATTRIBUTES = %w[length tempo].freeze
end
