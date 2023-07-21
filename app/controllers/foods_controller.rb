class FoodsController < ApplicationController
  def index
    @total_hits = UsdaFoodFacade.new.foods_search(params[:q]).total_hits
    @search_results = UsdaFoodFacade.new.foods_search(params[:q]).foods
  end
end
