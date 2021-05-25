require 'faker'

FactoryBot.define do
  factory :user do |f|
    f.first_name { Faker::Name.first_name }
    f.last_name { Faker::Name.last_name }
    f.email { Faker::Internet.email }
    f.role { Role.find_by(key: "admin") }
    f.mobile { Faker::PhoneNumber.cell_phone_in_e164 }
  end
end