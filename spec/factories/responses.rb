# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :response do
    first_name "MyString"
    last_name "MyString"
    email "MyString"
    subject "MyString"
    description "MyText"
  end
end
