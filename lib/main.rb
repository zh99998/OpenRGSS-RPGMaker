require 'inifile'
require 'openrgss'
require 'zlib'

require_relative 'rpg/rpgva'

include RGSS

Game_Config = IniFile.load('Game.ini', encoding: "GBK")['Game']
RGSS.title = Game_Config['Title']
$RGSS_SCRIPTS = load_data Game_Config['Scripts'].gsub('\\', '/')
$RGSS_VERSION = case File.extname Game_Config['Scripts']
when '.rxdata'
  1
when '.rvdata'
  2
when '.rvdata2'
  3
else
  if Game_Config['Library'] and Game_Config['Library'] =~ /RGSS(\d)\d\d\w?\.dll/i
    $1.to_i
  else
    puts "warning: can't detect rgss version"
    3
  end
end


if $RGSS_VERSION == 1
  Graphics.resize_screen(640, 480)
else
  Graphics.resize_screen(544, 416)
end

if $RGSS_VERSION <= 2
  RGSS.init
end
RGSS.load_path += ['/home/zh99998/RubymineProjects/OpenRGSS-RPGMaker/RTP']
$RGSS_SCRIPTS.each do |script|
  #for IDE debug
  open("Data/#{script[1]}.rb", 'w') { |f| f.write Zlib::Inflate.inflate(script[2]) }
  eval Zlib::Inflate.inflate(script[2]), TOPLEVEL_BINDING, "Data/#{script[1]}.rb", 0

  #eval Zlib::Inflate.inflate(script[2]), TOPLEVEL_BINDING, script[1], 0
end