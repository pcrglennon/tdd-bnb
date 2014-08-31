FactoryGirl.define do
  factory :city do
    name { Faker::Address.city }

    factory :city_with_homes_and_listings do
      ignore do
        homes_count 5
      end

      after(:create) do |city, evaluator|
        create_list(:home_with_listings, evaluator.homes_count, city: city)
      end
    end
  end
end