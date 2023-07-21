class FoodsController < ApplicationController
 def index
  # if params[:q]
    @total_hits = UsdaFoodFacade.new.foods_search(params[:q]).total_hits
    @
  # end
 end
end
