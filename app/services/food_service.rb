class FoodService
  def food_search_url
    get_url('/search')
  end

  def conn
    Faraday.new(url: 'https://api.nal.usda.gov/fdc/v1/foods') do |f|
      f.params['api_key'] = ENV['USDA_KEY']
    end
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end
