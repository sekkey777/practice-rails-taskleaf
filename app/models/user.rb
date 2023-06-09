# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  admin           :boolean          default(FALSE), not null
#  age             :integer
#  email           :string           not null
#  introduction    :string
#  name            :string           not null
#  password_digest :string           not null
#  sex             :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_users_on_email  (email) UNIQUE
#
class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  has_many :tasks
  has_many :posts
  has_many :comments
  has_many :likes

  def liked_by?(post_id)
    likes.where(post_id: post_id).exists?  
  end
end
