FactoryBot.define do
    factory :model, class: "Model" do
      name { Faker::Name.name }
      brand
    end
  end