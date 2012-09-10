class RPG::Troop
  def initialize
    @id = 0
    @name = ''
    @members = []
    @pages = [RPG::Troop::Page.new]
  end

  attr_accessor :id
  attr_accessor :name
  attr_accessor :members
  attr_accessor :pages
end