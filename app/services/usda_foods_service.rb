class UsdaFoodsService
  def food_search_url(search)
    get_url("/fdc/v1/foods/search?query=#{search}")
  end

  def conn
    Faraday.new(url: 'https://api.nal.usda.gov') do |f|
      f.params['api_key'] = ENV['USDA_KEY']
    end
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end
