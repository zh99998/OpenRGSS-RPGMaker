require 'inifile'
require 'openrgss'
require 'zlib'

module RPG
  ;
end
require_relative 'rpg/rpgva'

include RGSS

Game_Config = IniFile.load('Game.ini', encoding: "GBK")['Game']
RGSS.title = Game_Config['Title']
$RGSS_SCRIPTS = load_data Game_Config['Scripts'].gsub('\\', '/')

$RGSS_SCRIPTS.each do |script|
  eval Zlib::Inflate.inflate(script[2]), TOPLEVEL_BINDING, script[1], 0
end