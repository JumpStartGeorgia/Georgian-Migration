require 'rails_helper'

describe Region do
  let(:region) { FactoryGirl.build(:region) }

  it 'is valid with minimum required attributes' do
    expect(region).to be_valid
  end

  describe '#name' do
    it 'is required' do
      region.name = nil
      region.valid?
      expect(region.errors[:name].size).to eq(1)
    end
  end
end
