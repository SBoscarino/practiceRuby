#classes require an initializer.
#instance variables (@'s') store STATE!
class Player
  def initialize(name, hitPoints)
    @name = name.capitalize
    @hit_Points = hitPoints
  end

  #list a character with their hit points
  def to_s
    "The character #{@name} has #{@hit_Points} health."
  end

  #health up by one
  def healthUp(number)
    @hit_Points += number
  end

  #health down by one
  def healthDown(number)
    @hit_Points -= number
  end
end

player1 = Player.new("crystal", 100)
player2 = Player.new("sidney", 200)
player3 = Player.new("thorus", 400)

puts player1
puts player2
puts player3

#adds
player1.healthUp(10)
puts player1
