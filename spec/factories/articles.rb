FactoryGirl.define do
  sequence(:title) {|n| "Cool Frikking Article \##{n}"}

  factory :article do
    title { generate(:title) }
    body Faker::Lorem.paragraphs(20).join
  end
end
