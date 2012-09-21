module RPG
  class UsableItem < BaseItem
    def initialize
      super
      @scope = 0
      @occasion = 0
      @speed = 0
      @animation_id = 0
      @common_event_id = 0
      @base_damage = 0
      @variance = 20
      @atk_f = 0
      @spi_f = 0
      @physical_attack = false
      @damage_to_mp = false
      @absorb_damage = false
      @ignore_defense = false
      @element_set = []
      @plus_state_set = []
      @minus_state_set = []
    end
    def for_opponent?
      return [1, 2, 3, 4, 5, 6].include?(@scope)
    end
    def for_friend?
      return [7, 8, 9, 10, 11].include?(@scope)
    end
    def for_dead_friend?
      return [9, 10].include?(@scope)
    end
    def for_user?
      return [11].include?(@scope)
    end
    def for_one?
      return [1, 3, 4, 7, 9, 11].include?(@scope)
    end
    def for_two?
      return [5].include?(@scope)
    end
    def for_three?
      return [6].include?(@scope)
    end
    def for_random?
      return [4, 5, 6].include?(@scope)
    end
    def for_all?
      return [2, 8, 10].include?(@scope)
    end
    def dual?
      return [3].include?(@scope)
    end
    def need_selection?
      return [1, 3, 7, 9].include?(@scope)
    end
    def battle_ok?
      return [0, 1].include?(@occasion)
    end
    def menu_ok?
      return [0, 2].include?(@occasion)
    end
    attr_accessor :scope
    attr_accessor :occasion
    attr_accessor :speed
    attr_accessor :animation_id
    attr_accessor :common_event_id
    attr_accessor :base_damage
    attr_accessor :variance
    attr_accessor :atk_f
    attr_accessor :spi_f
    attr_accessor :physical_attack
    attr_accessor :damage_to_mp
    attr_accessor :absorb_damage
    attr_accessor :ignore_defense
    attr_accessor :element_set
    attr_accessor :plus_state_set
    attr_accessor :minus_state_set
  end
end

