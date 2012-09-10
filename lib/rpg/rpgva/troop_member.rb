class RPG::Troop::Member
  def initialize
    @enemy_id = 1
    @x = 0
    @y = 0
    @hidden = false
  end

  attr_accessor :enemy_id
  attr_accessor :x
  attr_accessor :y
  attr_accessor :hidden
end