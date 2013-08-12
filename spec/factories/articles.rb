FactoryGirl.define do
  sequence(:name) {|n| "Cool Frikkin' Article \##{n}"}

  factory :article do
    name { generate(:name) }
    body Faker::Lorem.paragraphs(20).join
  end
end
