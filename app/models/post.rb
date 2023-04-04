# == Schema Information
#
# Table name: posts
#
#  id         :bigint           not null, primary key
#  content    :text
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer          not null
#
class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  def self.ransackable_attributes(auth_object = nil)
    ["title", "created_at"]
  end
end
