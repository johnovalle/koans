class Game
  
  def play
    build_char
    puts "Hello #{@name}, welcome to the dungeon!"
    lion = Monster.new(2,3,1)
    battle(lion)
  end
  
  def build_char
    print "Enter your name brave warrior:"
    @name = gets.chomp
    @hp = 10
    @attack = 3
  end
  
  def battle(monster)
    if @attack >= monster.defense
      monster.hp -= @attack
      puts "you hit the monster"
    else
      @hp -= monster.attack
    end
  end
  
end

class Monster
  attr_accessor :attack, :hp, :defense
  def initialize(attack, hp, defense)
    @attack = attack
    @hp = hp
    @defense = defense
  end
end

def Hero(attack, hp)
end

game = Game.new

game.play