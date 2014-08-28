FactoryGirl.define do
  factory :city do
    name { Faker::Address.city }

    factory :city_with_properties do
      ignore do
        properties_count 5
      end

      after(:create) do |city, evaluator|
        create_list(:property, evaluator.properties_count, city: city)
      end
    end
  end
end