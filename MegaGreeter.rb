#!/usr/bin/env ruby

class MegaGreeter
	attr_accessor :names
	
	def initialize(names = "World")
		@names = names
	end
	
	def SayHi
		if @names.nil?
			puts "..."
		elsif @names.respond_to?("each")
			# @names is a list, so iterate
			@names.each do |name|
				puts "Hello #{name}!"
			end
		else
			puts "Hello #{@names}!"
		end
	end
	
	def SayBye
		if @names.nil?
			puts "..."
		elsif @names.respond_to?("join")
			# Join the list elements with commas
			puts "Goodbye #{@names.join(", ")}."
		else
			puts "Goodbye #{@names}."
		end
	end
end

if __FILE__ == $0
	mg = MegaGreeter.new
	mg.SayHi
	mg.SayBye
	
	# Change name to "Fark"
	mg.names = "Fark"
	mg.SayHi
	mg.SayBye
	
	# Make it an array of names
	mg.names = ["Abdul", "Babdul", "Dabdul", "Fabdul", "Mabdul", "Vabdul"]
	mg.SayHi
	mg.SayBye
	
	# Make it nil again
	mg.names = nil
	mg.SayHi
	mg.SayBye
end