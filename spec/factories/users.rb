# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    id 1
    email 'user0@a.b'
    password 'abcdefgh'
  end
end
