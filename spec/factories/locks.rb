FactoryGirl.define do
  factory :lock do
    required_joins 1
    drop_to "9.99"
    unlocked false
    drop nil
  end
end
