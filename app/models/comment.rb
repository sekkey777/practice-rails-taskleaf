# == Schema Information
#
# Table name: comments
#
#  id         :bigint           not null, primary key
#  comment    :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  post_id    :integer          not null
#  user_id    :integer          not null
#
class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
end
