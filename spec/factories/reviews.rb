# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :review do
    user_id 1
    bar_id 1
    content "MyString"
    rating 1
  end
end
