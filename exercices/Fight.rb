class Entity
  attr_accessor :name, :hp, :rank

  def initialize(name, hp, rank)
    @name = name
    @hp = hp
    @rank = rank
  end

  def attack(entity)
    entity.hp = entity.hp - rank
  end

  def hp?
    puts @hp
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

