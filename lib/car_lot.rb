class CarLot
  attr_accessor :name
  attr_reader :cars

  def initialize(name)
    @name = name
    @cars = []
  end

  def value
    # cars.map{ |car| car.price }.reduce{ |sum, price| sum + price }
    cars.map(&:price).reduce(0, :+)
  end

  def cars_with_make(make)
    cars.select{ |car| car.make == make }
  end

  def cars_with_model(model)
    cars.select{ |car| car.model == model }
  end

  def cars_with_year(year)
    cars.select{ |car| car.year == year }
  end
end
