FactoryGirl.define do
  factory :listing do
    start_date { Faker::Number.number(2).to_i.weeks.ago }
    end_date do
      if [1, 2].sample == 1
        Faker::Number.number(1).to_i.weeks.ago
      else
        Faker::Number.number(1).to_i.weeks.from_now
      end
    end

    home

    factory :expired_listing do
      start_date { Faker::Number.number(3).to_i.days.ago }
      end_date   { Faker::Number.number(2).to_i.days.ago }
    end

    factory :current_listing do
      start_date { Faker::Number.number(1).to_i.days.ago }
      end_date   { Faker::Number.number(2).to_i.days.from_now }
    end

    factory :upcoming_listing do
      start_date { Faker::Number.number(2).to_i.days.from_now }
      end_date   { Faker::Number.number(2).to_i.weeks.from_now }
    end
  end
end
