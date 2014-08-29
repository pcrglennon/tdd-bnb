
FactoryGirl.define do
  factory :home do
    address do
      Faker::Address.street_address + ", " +
      Faker::Address.secondary_address + " " +
      Faker::Address.zip_code
    end

    city
  end
end
