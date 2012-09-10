class RPG::Enemy < RPG::BaseItem
  def initialize
    super
    @battler_name = ''
    @battler_hue = 0
    @params = [100, 0, 10, 10, 10, 10, 10, 10]
    @exp = 0
    @gold = 0
    @drop_items = Array.new(3) { RPG::Enemy::DropItem.new }
    @actions = [RPG::Enemy::Action.new]
    @features.push(RPG::BaseItem::Feature.new(22, 0, 0.95))
    @features.push(RPG::BaseItem::Feature.new(22, 1, 0.05))
    @features.push(RPG::BaseItem::Feature.new(31, 1, 0))
  end

  attr_accessor :battler_name
  attr_accessor :battler_hue
  attr_accessor :params
  attr_accessor :exp
  attr_accessor :gold
  attr_accessor :drop_items
  attr_accessor :actions
end