class RPG::EquipItem < RPG::BaseItem
  def initialize
    super
    @price = 0
    @etype_id = 0
    @params = [0] * 8
  end

  attr_accessor :price
  attr_accessor :etype_id
  attr_accessor :params
end