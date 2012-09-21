module RPG
  class Area
    def initialize
      @id = 0
      @name = ""
      @map_id = 0
      @rect = Rect.new(0,0,0,0)
      @encounter_list = []
      @order = 0
    end
    attr_accessor :id
    attr_accessor :name
    attr_accessor :map_id
    attr_accessor :rect
    attr_accessor :encounter_list
    attr_accessor :order
  end
end

