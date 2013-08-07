FactoryGirl.define do
  sequence(:name) {|n| "Article #{n}"}

  factory :article do
    name { generate(:name) }
    body "This is my body."
  end
end
