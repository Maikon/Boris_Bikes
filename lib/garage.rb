# defining Garage class
class Garage
  include BikeContainer

  def dock(bike)
    bike.fix
  end
end
