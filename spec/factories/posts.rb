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
FactoryBot.define do
  factory :post do
    title { "" }
    content { "" }
  end
end
