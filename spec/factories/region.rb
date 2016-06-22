FactoryGirl.define do
  factory :region do
    sequence(:name) { |i| "region\##{i}" }
  end
end
