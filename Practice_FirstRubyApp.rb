#!usr/bin/env ruby

class Launcher

  def initialize app_map
    @app_map = app_map
  end
  
  # Execute file using associate app
  def run file_name
    application = select_app file_name
    system "#{application} #{file_name}"
  end
  
  # Given file, look up matching application
  def select_app file_name
    ftype = file_type( file_name ).downcase
    @app_map[ ftype ]
  end
  
  #Return file extension
  def file_type file_name
    File.extname( file_name ).gsub( /^\./,'' )
  end

end


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
   'html' => 'firefox-browser -new-window --enable-plugins --allow-outdated-plugins ',
   'rb' => 'Notepad++'
}

l = Launcher.new app_map
target = ARGV.join ' '
l.run target

