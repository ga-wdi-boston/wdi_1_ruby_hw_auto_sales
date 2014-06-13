require 'date'

class Car
  DEFAULT_MARKUP = 0.1
  DEPRECIATION_PER_YEAR = 0.05

  attr_accessor :make, :model, :year, :msrp, :markup

  def initialize(make:, model:, year:, msrp:, markup: DEFAULT_MARKUP)
    @make, @model, @year, @msrp, @markup = make, model, year, msrp, markup
  end

  def value
    msrp * (1 - depreciation)
  end

  def price
    value * (1 + markup)
  end

  private

  def depreciation
    (Date.today.year - year) * DEPRECIATION_PER_YEAR
  end
end
