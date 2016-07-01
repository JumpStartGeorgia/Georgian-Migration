require 'rails_helper'

describe 'root/index.html.erb' do
  context 'when there is a region' do
    it "displays the region's name" do
      region = RegionCell.call(FactoryGirl.create(:region, name: 'Tbilisi')).call
      assign(:regions, [region])

      render

      expect(rendered).to have_content 'Tbilisi'
    end
  end

  context 'when there is no region' do
    it 'displays message that there is no region' do
      assign(:regions, [])

      render

      expect(rendered).to have_content 'No regions have been created.'
    end
  end
end
