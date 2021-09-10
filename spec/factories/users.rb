FactoryBot.define do
  factory :user do
    username {Faker::Internet.user_name}
    email {Faker::Internet.free_email}
    password {'test123'}
    password_confirmation {password}
  end
end