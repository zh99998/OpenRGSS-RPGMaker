module RPG
  class Enemy
    class DropItem
      def initialize
        @kind = 0
        @item_id = 1
        @weapon_id = 1
        @armor_id = 1
        @denominator = 1
      end
      attr_accessor :kind
      attr_accessor :item_id
      attr_accessor :weapon_id
      attr_accessor :armor_id
      attr_accessor :denominator
    end
  end
end

