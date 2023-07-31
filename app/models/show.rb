# == Schema Information
#
# Table name: shows
#
#  id         :bigint           not null, primary key
#  artist     :string
#  title      :string
#  year       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_shows_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Show < ApplicationRecord
  belongs_to :user
  has_many :songs, dependent: :destroy
  has_many :song_attributes, dependent: :destroy
end
