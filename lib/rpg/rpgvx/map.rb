module RPG
  class Map
    def initialize(width, height)
      @width = width
      @height = height
      @scroll_type = 0
      @autoplay_bgm = false
      @bgm = RPG::BGM.new
      @autoplay_bgs = false
      @bgs = RPG::BGS.new("", 80)
      @disable_dashing = false
      @encounter_list = []
      @encounter_step = 30
      @parallax_name = ""
      @parallax_loop_x = false
      @parallax_loop_y = false
      @parallax_sx = 0
      @parallax_sy = 0
      @parallax_show = false
      @data = Table.new(width, height, 3)
      @events = {}
    end
    attr_accessor :width
    attr_accessor :height
    attr_accessor :scroll_type
    attr_accessor :autoplay_bgm
    attr_accessor :bgm
    attr_accessor :autoplay_bgs
    attr_accessor :bgs
    attr_accessor :disable_dashing
    attr_accessor :encounter_list
    attr_accessor :encounter_step
    attr_accessor :parallax_name
    attr_accessor :parallax_loop_x
    attr_accessor :parallax_loop_y
    attr_accessor :parallax_sx
    attr_accessor :parallax_sy
    attr_accessor :parallax_show
    attr_accessor :data
    attr_accessor :events
  end
end

