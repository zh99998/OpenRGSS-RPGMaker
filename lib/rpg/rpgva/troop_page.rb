class RPG::Troop::Page
  def initialize
    @condition = RPG::Troop::Page::Condition.new
    @span = 0
    @list = [RPG::EventCommand.new]
  end

  attr_accessor :condition
  attr_accessor :span
  attr_accessor :list
end