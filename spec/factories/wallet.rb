FactoryBot.define do
  factory :wallet do
    trait :with_amount do
      amount { 1.2345 }
      user { association(:user) }
    end

    trait :without_user do
      amount { 1.2345 }
    end
  end
end
