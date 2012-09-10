class RPG::Troop::Page::Condition
  def initialize
    @turn_ending = false
    @turn_valid = false
    @enemy_valid = false
    @actor_valid = false
    @switch_valid = false
    @turn_a = 0
    @turn_b = 0
    @enemy_index = 0
    @enemy_hp = 50
    @actor_id = 1
    @actor_hp = 50
    @switch_id = 1
  end

  attr_accessor :turn_ending
  attr_accessor :turn_valid
  attr_accessor :enemy_valid
  attr_accessor :actor_valid
  attr_accessor :switch_valid
  attr_accessor :turn_a
  attr_accessor :turn_b
  attr_accessor :enemy_index
  attr_accessor :enemy_hp
  attr_accessor :actor_id
  attr_accessor :actor_hp
  attr_accessor :switch_id
end