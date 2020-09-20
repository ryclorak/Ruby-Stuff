#!usr/bin/env ruby

#version 0

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
    File.extname( file_name ).gsub /^\./, ''
  end

end

