# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :reservation do
    start_time "2014-06-25 14:11:09"
    user_id 1
    bar_id 1
    number_of_patrons 1
  end
end
