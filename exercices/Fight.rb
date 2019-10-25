class Entity
  attr_accessor :name, :hp, :rank

  def initialize(name, hp, rank)
    @name = name
    @hp = hp.to_i
    @rank = rank
  end

  def attack(entity)
    entity.hp = entity.hp - rank
  end

  def alive?
    @hp > 0
  end
end

class Player < Entity

  def fix
    @hp += @hp/2
  end

  def upgrade
    @rank += @rank/2
  end

end

def stop_script message
  puts message
  exit
end

player = Player.new "player", 200, 10
goblin = Entity.new "Goblin", 100, 10
poulpe = Entity.new "Moreau", 50000, 0.05

puts "Bienvenue sur Moreau simulator"
puts "Chosis l'une des possibilité suivante\n"
puts "1 - Attaque le Gobelin, il a encore #{goblin.hp} points de vie."
puts "2 - Attaque Moreau, elle a encore #{poulpe.hp} points de vie."
puts "3 - Soigne toi"
puts "4 - Améliore ton attaque"


while player.hp > 0
  if !goblin.alive? && !poulpe.alive?
    stop_script "Bravo, tu a vaincu Moreau la sorcière et son gobelin de compagnie"
  else

    current_choice = gets.to_i

    case current_choice
    when 1
      player.attack goblin
    when 2
      player.attack poulpe
    when 3
      player.fix
    when 4
      player.upgrade
    else
      stop_script "Vous devez choisir un nombre entre 1 et 4"
    end

    if goblin.alive?
      puts "1 - Attaque le Gobelin, il a encore #{goblin.hp} points de vie."
    else
      puts "Le Gobelin est mort (Ne l'attaque pas, tu perdra un tour)"
    end

    if poulpe.alive?
      puts "2 - Attaque Moreau, elle a encore #{poulpe.hp} points de vie."
    else
      puts "Moreau est morte (Ne l'attaque pas, tu perdra un tour)"
    end

    puts "3 - Soigne toi, tu as #{player.hp} points de vie"
    puts "4 - Améliore ton attaque, elle fais #{player.rank} de dégats"

    goblin.attack player
    poulpe.attack player

    puts "Il te reste #{player.hp} points de vie et tes attaques font #{player.rank} de dégats \n\n"
  end
end

