class FoodsSearch
  attr_reader :total_hits,
              :foods

  def initialize(data)
    @total_hits = data[:totalHits]
    @foods = data[:foods]
  end
end
