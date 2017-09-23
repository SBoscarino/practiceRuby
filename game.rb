#classes require an initializer.
#initializing instance variables sets state.
#instance variables store state. (@) They live for the life of an object.
class Player
  def initialize(name, hitPoints)
    @name = name.capitalize
    @hit_Points = hitPoints
  end

  #list a character with their hit points
  def to_s
    "The character #{@name} has #{@hit_Points} health."
  end

  #raise health with hugs! How fun!
  def hug(number)
    @hit_Points += number
    puts "#{@name} got a hug!!"
    if number >= 10
      puts "That's a really good hug, yo! You should hug more!!"
      puts "#{@name}'s health is now #{@hit_Points}"
    else number <= 11
      puts "Bro, why is your hug game so weak? Get some practice, friend."
      puts "#{@name}'s health is now #{@hit_Points}"
    end
  end

  #lower health with bad memes!
  def badMeme(number)
    @hit_Points += number
    puts "#{@name} saw a poorly written meme on Reddit. It was unforgettable and not in the good way. We mourn for #{@name}."
    if number >= 10
      puts "Critical hit!! Super effective!"
      puts "#{@name}'s health is now #{@hit_Points}."
    else number <= 11
      puts "The meme could have been better, but it was still lacking."
      puts "#{@name}'s health is now #{@hit_Points}."
    end
  end
end

player1 = Player.new("crystal", 100)
player2 = Player.new("sidney", 200)
player3 = Player.new("thorus", 400)

puts player1
puts player2
puts player3

#cool stuff:
player1.hug(10)
player3.badMeme(50)
