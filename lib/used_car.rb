require_relative 'car'

class UsedCar < Car
  DEPRECIATION_PER_MILE = 0.000001

  attr_accessor :mileage
  attr_reader :damages

  def initialize(mileage:, **attributes)
    super(attributes)
    @mileage = mileage
    @damages = []
  end

  def damaged?
    damages.any?
  end

  def value
    super - damages.map(&:cost).reduce(0, :+)
  end

  private

  def depreciation
    super + (mileage * DEPRECIATION_PER_MILE)
  end
end
