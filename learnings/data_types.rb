# INTEGERS ######################################
# Integer division
10 / 4  # 2
# Exponent
2 ** 3  # 8

# Built-ins
6.even?  # true
6.odd?   # false


# STRINGS #######################################
str1 = 'can be single quotes'
str2 = "can be double quotes"
concat1 = "Welcome " + "to " + "The Toilet Zone"
concat2 = 'do ' << 'you ' << 'knowthemuffinman?'  # shovel operator
concat3 = "Welcome ".concat("you've got mail. ").concat("Goodbye")

# Substrings
"hello"[0]      # h
"hello"[0..1]   # he
"hello"[0, 4]   # hell
"hello"[-1]     # o

# Interpolation
name = "Testicules"
puts "Hello, #{name}"  # Hello, Testicules
puts 'Hello, #{name}'  # Hello, #{name} but the IDE will show that so yay vs code

"hello".capitalize  # returns Hello, but variable is still lowercase
"hello".capitalize! # returns Hello, and variable has been changed

"hello".include?("lo")  # true

# also .upcase and .downcase and .empty? and .length and .reverse and .split amd .strip..
# including a ! after the thing, like .upcase! will change the variable itself
# cam convert other objects into strings


# SYMBOLS #######################################
# sorta like a string..? useful as keys in hashes
# stored in memory once, as opposed to more each time string is used
:some_symbol  # at the beginning of some text

"string" == "string"  # true
"string".object_id == "string".object_id  # false
:symbol.object_id == :symbol.object_id  # true


# BOOLEANS ######################################
true
false
nil
