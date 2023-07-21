class UsdaFoodFacade
  def foods_search(search)
    FoodsSearch.new(service.food_search_url(search))
  end

  def service
    UsdaFoodsService.new
  end
end
