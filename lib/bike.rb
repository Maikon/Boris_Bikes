# defining Bike class
class Bike
  def initialize
    fix
  end

  def broken?
    @broken
  end

  def break
    @broken = true
    'Bike is now broken'
  end

  def fix
    @broken = false
    'Bike is now fixed'
  end
end
