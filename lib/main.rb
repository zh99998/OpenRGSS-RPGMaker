$LOAD_PATH << '/home/zh99998/RubymineProjects/OpenRGSS/lib'

require 'inifile'
require 'openrgss'
require 'zlib'

require_relative 'rpg/rpgva'

include RGSS

Game_Config   = IniFile.load('Game.ini', encoding: "GBK")['Game'] #how to detect charset?
RGSS.title    = Game_Config['Title']
$RGSS_SCRIPTS = load_data Game_Config['Scripts'].gsub('\\', '/')
$RGSS_VERSION = if index = ['.rxdata', '.rvdata' '.rvdata2'].index(File.extname(Game_Config['Scripts']))
  index + 1
elsif Game_Config['Library'] and Game_Config['Library'] =~ /RGSS(\d)\d\d\w?\.dll/i
  $1.to_i
else
  puts "warning: can't detect rgss version"
end

if $RGSS_VERSION == 1
  Graphics.resize_screen(640, 480)
else
  Graphics.resize_screen(544, 416)
end

if RUBY_PLATFORM['mingw'] or RUBY_PLATFORM['mswin']
  require 'win32/registry'
  registry = Win32::Registry::HKEY_LOCAL_MACHINE
  if $RGSS_VERSION == 1
    registry.open('Software\Enterbrain\RGSS\RTP') do |reg|
      [Game_Config['RTP1'], Game_Config['RTP2'], Game_Config['RTP3']].each do |rtp|
        (RGSS.load_path << reg[rtp]) rescue nil
      end
    end
  else
    registry.open("Software\\Enterbrain\\RGSS#{$RGSS_VERSION}\\RTP") do |reg|
      (RGSS.load_path << reg[Game_Config['RTP']]
    end
  end
else
  RGSS.load_path += ['/home/zh99998/RubymineProjects/OpenRGSS-RPGMaker/RTP'] #maybe it's better to define in Environment variables
end
if $RGSS_VERSION <= 2
  RGSS.init
  rgss_main { $RGSS_SCRIPTS.each { |script| eval Zlib::Inflate.inflate(script[2]).force_encoding('UTF-8'), TOPLEVEL_BINDING, script[1], 0 } }
else
  $RGSS_SCRIPTS.each { |script| eval Zlib::Inflate.inflate(script[2]).force_encoding('UTF-8'), TOPLEVEL_BINDING, script[1], 0 }
  #$RGSS_SCRIPTS.each do |script|
  #for IDE debug
  #open("Data/#{script[1]}.rb", 'w') { |f| f.write Zlib::Inflate.inflate(script[2]) }
  #eval IO.read("Data/#{script[1]}.rb"), TOPLEVEL_BINDING, "Data/#{script[1]}.rb", 0
  #end
end
