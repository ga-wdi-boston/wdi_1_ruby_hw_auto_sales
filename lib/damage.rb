class Damage
  attr_accessor :description, :cost

  def initialize(description:, cost:)
    @description, @cost = description, cost
  end
end
