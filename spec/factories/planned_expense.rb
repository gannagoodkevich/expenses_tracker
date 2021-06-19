FactoryBot.define do
  factory :planned_expense do
    trait :in_the_future do
      name { "title_1" }
      description { "this is a description" }
      due_date  { 2.days.from_now }
      user { association(:user) }
    end

    trait :in_the_past do
      name { "title_2" }
      description { "this is a description" }
      due_date { 10.days.ago }
    end
  end
end