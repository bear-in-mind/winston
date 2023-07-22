# == Schema Information
#
# Table name: show_users
#
#  id                :bigint           not null, primary key
#  displayed_columns :string           default([]), is an Array
#  roles             :string           default([]), is an Array
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  show_id           :bigint           not null
#  user_id           :bigint           not null
#
# Indexes
#
#  index_show_users_on_show_id  (show_id)
#  index_show_users_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (show_id => shows.id)
#  fk_rails_...  (user_id => users.id)
#
class ShowUser < ApplicationRecord
end
