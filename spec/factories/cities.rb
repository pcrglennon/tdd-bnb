FactoryGirl.define do
  factory :city do
    name { Faker::Address.city }

    factory :city_with_homes do
      ignore do
        homes_count 5
      end

      after(:create) do |city, evaluator|
        create_list(:home, evaluator.homes_count, city: city)
      end
    end
  end
end