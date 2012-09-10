class RPG::Map::Encounter
  def initialize
    @troop_id = 1
    @weight = 10
    @region_set = []
  end

  attr_accessor :troop_id
  attr_accessor :weight
  attr_accessor :region_set
end