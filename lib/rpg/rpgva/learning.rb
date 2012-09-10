class RPG::Class::Learning
  def initialize
    @level = 1
    @skill_id = 1
    @note = ''
  end

  attr_accessor :level
  attr_accessor :skill_id
  attr_accessor :note
end