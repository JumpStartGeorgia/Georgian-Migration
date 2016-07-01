require 'rails_helper'

describe RootController do
  describe 'GET #index' do
    it 'renders the :index view' do
      get :index
      expect(response).to render_template(:index)
    end

    it 'assigns all Regions to @regions' do
      region1 = RegionCell.call(FactoryGirl.create(:region)).call
      region2 = RegionCell.call(FactoryGirl.create(:region)).call

      get :index
      expect(assigns(:regions)).to eq([region1, region2])
    end
  end
end
