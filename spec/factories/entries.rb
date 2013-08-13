FactoryGirl.define do
  sequence(:title) {|n| "Cool Frikking Entry \##{n}"}

  factory :entry do
    title { generate(:title) }
    body Faker::Lorem.paragraphs(20).join
  end
end
