text = "I am learning Ruby and it is fun!"
text.downcase! #changes case in place
freqs = {}
freqs.default = 0 #initializes hash to 0

text.each_char { |char| freqs[char] += 1} #increments count of chars in hash

("a".."z").each {|x| puts "#{x} : #{freqs[x]}" } #prints each letter and its frequency