# == Schema Information
#
# Table name: posts
#
#  id         :bigint           not null, primary key
#  title      :string(255)
#  body       :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
FactoryBot.define do
  factory :post do
    title { "MyString" }
    body { "MyText" }
    user { nil }
  end
end
