class Planet
  
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  
  def initialize(name, quantity_in_stock)
    @name = name
    @quantity_in_stock = quantity_in_stock
    @quantity_sold = 0
  end
  
  def sell(amount)
    @quantity_in_stock -= amount
    @quantity_sold += amount
  end
  
  def available?
    return quantity_in_stock > 0
  end
  
end