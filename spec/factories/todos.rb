# == Schema Information
#
# Table name: todos
#
#  id          :bigint           not null, primary key
#  description :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryBot.define do
  factory :todo do
    description { Faker::Lorem.sentence }
  end
end
