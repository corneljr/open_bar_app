# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :bar do
    name "MyString"
    address "MyString"
    latitude 1.5
    longitude 1.5
    capacity 1
    description "MyString"
    owner_id 1
  end
end
