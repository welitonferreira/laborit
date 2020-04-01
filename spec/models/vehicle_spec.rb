require 'rails_helper'

RSpec.describe Vehicle, type: :model do
  it 'is valid' do
    vehicle = create(:vehicle)
    expect(vehicle).to be_valid
  end

  it 'name is value' do
    vehicle = build(:vehicle, value: nil)
    vehicle.valid?
    expect(vehicle.errors[:value]).to include("can't be blank")
  end

  it 'name is yearModel' do
    vehicle = build(:vehicle, yearModel: nil)
    vehicle.valid?
    expect(vehicle.errors[:yearModel]).to include("can't be blank")
  end

  it 'name is fuel' do
    vehicle = build(:vehicle, fuel: nil)
    vehicle.valid?
    expect(vehicle.errors[:fuel]).to include("can't be blank")
  end

  it 'brand is null' do
    vehicle = build(:vehicle, brand: nil)
    vehicle.valid?
    expect(vehicle.errors[:brand]).to include("must exist")
  end

  it 'model is null' do
    vehicle = build(:vehicle, model: nil)
    vehicle.valid?
    expect(vehicle.errors[:model]).to include("must exist")
  end

end
