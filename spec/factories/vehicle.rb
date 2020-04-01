FactoryBot.define do
    factory :vehicle do
      value { Faker::Commerce.price }
      brand
      model
      yearModel { Faker::Number.decimal_part(digits: 4) }
      fuel { Faker::Name.name }
    end
  end