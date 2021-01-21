class Player
  attr_reader :name, :health

  def initialize(name, health= 69)
    @name = name
    @health = health
  end



  def receive_damage
    @health -= 10
  end
end
