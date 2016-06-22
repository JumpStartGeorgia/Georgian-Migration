class RootController < ApplicationController
  def index
    @regions = Region.all
  end
end
