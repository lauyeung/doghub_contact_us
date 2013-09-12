# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :response do
    first_name "John"
    last_name "Tonks"
    email "john@tonks.com"
    sequence(:subject) { |n| "The #{n}th Subject" }
    sequence(:description) { |n| "#{n} descriptive description" }
  end
end
