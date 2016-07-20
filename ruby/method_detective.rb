# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

a = "iNvEsTiGaTiOn".swapcase
puts a == "InVeStIgAtIoN"
# or .swapcase!

b = "zom".insert(1, 'o')
puts b == "zoom"

c = "enhance".center(15)
puts c == "    enhance    "

d = "Stop! You’re under arrest!".upcase
puts d == "STOP! YOU’RE UNDER ARREST!"
# or .upcase!

e = "the usual".insert(-1, ' suspects')
puts e == "the usual suspects"
# or .replace

f = " suspects".prepend("the usual")
puts f == "the usual suspects"
# or .insert, .replace

g = "The case of the disappearing last letter".chop
puts g == "The case of the disappearing last lette"
# or .chop!

h = "The mystery of the missing first letter"[1..-1]
puts h == "he mystery of the missing first letter"

i = "Elementary,    my   dear        Watson!".squeeze(" ") 
puts i == "Elementary, my dear Watson!"
# or .squeeze!

j = "z".bytes.join.to_i
puts j == 122
# or .each_byte {|fixnum| block}

k = "How many times does the letter 'a' appear in this string?".count "a"
puts k == 4