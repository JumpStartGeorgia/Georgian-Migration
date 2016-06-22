require 'rails_helper'

describe Region do
  it 'is valid with minimum required attributes' do
    region = FactoryGirl.build(:region)
    expect(region).to be_valid
  end

  describe '#name' do
    it 'is required' do
      region = FactoryGirl.build(:region)
      region.name = nil
      region.valid?
      expect(region.errors[:name].size).to eq(1)
    end
  end
end
