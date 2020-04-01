require 'rails_helper'

RSpec.describe Brand, type: :model do
  it 'is valid with name' do
    brand = create(:brand)
    expect(brand).to be_valid
  end

 
end
