require 'rails_helper'

describe RegionCell do
  it 'renders the name of a region' do
    region = FactoryGirl.create(:region, name: 'Samegrelo')

    html = RegionCell.call(region).call

    expect(Capybara.string(html)).to have_content 'Samegrelo'
  end
end
