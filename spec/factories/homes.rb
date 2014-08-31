FactoryGirl.define do
  factory :home do
    address do
      Faker::Address.street_address + ", " +
      Faker::Address.secondary_address + " " +
      Faker::Address.zip_code
    end

    city

    factory :home_with_listings do
      ignore do
        expired_listings_count 2
        current_listings_count 1
        upcoming_listings_count 1
      end

      after(:create) do |home, evaluator|
        create_list(:expired_listing, evaluator.expired_listings_count, home: home)
        create_list(:current_listing, evaluator.current_listings_count, home: home)
        create_list(:upcoming_listing, evaluator.upcoming_listings_count, home: home)
      end
    end
  end
end
