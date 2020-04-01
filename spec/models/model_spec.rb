require 'rails_helper'

RSpec.describe Model, type: :model do
  it 'is valid' do
    model = create(:model)
    expect(model).to be_valid
  end

  it 'name is null' do
    model = build(:model, name: nil)
    model.valid?
    expect(model.errors[:name]).to include("can't be blank")
  end

  it 'brand is null' do
    model = build(:model, brand: nil)
    model.valid?
    expect(model.errors[:brand]).to include("must exist")
  end
end
