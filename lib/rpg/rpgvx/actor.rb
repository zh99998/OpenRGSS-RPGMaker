module RPG
  class Actor
    def initialize
      @id = 0
      @name = ""
      @class_id = 1
      @initial_level = 1
      @exp_basis = 25
      @exp_inflation = 35
      @character_name = ""
      @character_index = 0
      @face_name = ""
      @face_index = 0
      @parameters = Table.new(6,100)
      for i in 1..99
        @parameters[0,i] = 400+i*50
        @parameters[1,i] = 80+i*10
        @parameters[2,i] = 15+i*5/4
        @parameters[3,i] = 15+i*5/4
        @parameters[4,i] = 20+i*5/2
        @parameters[5,i] = 20+i*5/2
      end
      @weapon_id = 0
      @armor1_id = 0
      @armor2_id = 0
      @armor3_id = 0
      @armor4_id = 0
      @two_swords_style = false
      @fix_equipment = false
      @auto_battle = false
      @super_guard = false
      @pharmacology = false
      @critical_bonus = false
    end
    attr_accessor :id
    attr_accessor :name
    attr_accessor :class_id
    attr_accessor :initial_level
    attr_accessor :exp_basis
    attr_accessor :exp_inflation
    attr_accessor :character_name
    attr_accessor :character_index
    attr_accessor :face_name
    attr_accessor :face_index
    attr_accessor :parameters
    attr_accessor :weapon_id
    attr_accessor :armor1_id
    attr_accessor :armor2_id
    attr_accessor :armor3_id
    attr_accessor :armor4_id
    attr_accessor :two_swords_style
    attr_accessor :fix_equipment
    attr_accessor :auto_battle
    attr_accessor :super_guard
    attr_accessor :pharmacology
    attr_accessor :critical_bonus
  end
end

