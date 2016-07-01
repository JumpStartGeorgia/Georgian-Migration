class RootController < ApplicationController
  def index
    @regions = Region.all.map { |region| cell(:region, region).call }
  end
end
