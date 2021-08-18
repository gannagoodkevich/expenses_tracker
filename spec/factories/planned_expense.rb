FactoryBot.define do
  factory :planned_expense do
    trait :in_the_future do
      title { "title_1" }
      description { "this is a description" }
      due_date  { 2.days.from_now }
      user { association(:user) }
    end

    trait :in_the_past do
      title { "title_2" }
      description { "this is a description" }
      due_date { 10.days.ago }
      user { association(:user) }
    end

    trait :without_title do
      description { "this is a description" }
      due_date { 10.days.from_now  }
      user { association(:user) }
    end

    trait :without_date do
      title { "title_3" }
      description { "this is a description" }
      user { association(:user) }
    end

    trait :without_user do
      title { "title_4" }
      description { "this is a description" }
      due_date { 10.days.from_now  }
    end
  end
end