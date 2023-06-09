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
FactoryBot.define do
  factory :user do
    name { 'テストユーザー'}
    email { 'test1@example.com' }
    password { 'password' }
  end
end
