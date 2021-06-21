FactoryBot.define do
  factory :saving_box do
    trait :with_name do
      name { "title_1" }
      purpose { "this is a purpose" }
      user { association(:user) }
    end

    trait :without_name do
      purpose { "this is a purpose" }
      user { association(:user) }
    end

    trait :without_user do
      name { "title_2" }
      purpose { "this is a purpose" }
    end
  end
end