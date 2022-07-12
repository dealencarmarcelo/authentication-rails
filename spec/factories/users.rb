FactoryBot.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    username { Faker::Name.first_name.underscore }
    email { Faker::Internet.email }

    psw = Faker::Alphanumeric.alphanumeric(number: 10)

    password { psw }
    password_confirmation { psw }
  end
end
