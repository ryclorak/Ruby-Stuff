#!usr/bin/env ruby

$:.unshift '.'
require 'Practice_FirstRubyApp'

# Script to invoke launcher using cmd-line args

def help
  print "
  You must pass in the path to the file to launch.
  
  Usage: #{__FILE__} target_file
"
end

unless ARGV.size > 0
  help
  exit
end

app_map = {
   'html' => 'C:\Program Files\Mozilla Firefox\firefox.exe',  #still not working...
   'rb' => 'Notepad',                                         #but i want notepad++
   'txt' => 'Notepad'
}

l = Launcher.new app_map
target = ARGV.join ' '
l.run target

