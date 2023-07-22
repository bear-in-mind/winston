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
#
class Show < ApplicationRecord
end
