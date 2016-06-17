require 'pry-byebug'

class Guy

  attr_reader(:name, :icon, :health, :energy, :starting_position, :position, :bonus)

  def initialize(name, icon, position)
    @name = name
    @icon = icon
    @health = 5
    @energy = 3
    @position = position
    @bonus = 0
  end

  
  def move(spaces)
    @position += spaces
  end

  def move_energy(bars)
    @energy -= (bars)
  end

  def hurt(health)
    @health -= health
  end  


  def chance_of_bonus_damage(guy)
    chance = rand(20)
    if chance > 16
      return @bonus = 2
    else
      return @bonus = 1
    end
  end


  def pain(bonus)
    @health -= bonus
  end


  def move_left(guy)
    move = gets.chomp
    if move == "a"
      guy.move(-1)
      guy.move_energy(1)
    end
  end  


  def move_right(guy)
    move = gets.chomp
    if move == "d"
      guy.move(1)
      guy.move_energy(1)
    end
  end


  def punch(guy1, guy2)
    hit = gets.chomp
    if hit == "w"
      guy2.hurt(1)
      guy1.move_energy(1)
    end
  end  


  def kick(guy1, guy2)
    guy1.chance_of_bonus_damage(guy1)
    hit = gets.chomp
    if hit == "s"
      guy2.pain(@bonus)
      guy1.move_energy(2)
    end
  end



end
