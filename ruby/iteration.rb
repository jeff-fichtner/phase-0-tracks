#release 0 - calling a block within a method

def food
  puts "I'm hungry."
  yield("pizza", "ice cream", "haagen daz")
  puts "That was delicious!"
end

food { |food1, food2, food3| puts "I want some #{food1} and #{food2} but only if it's #{food3}!"}

#release 1 - using .each .map .map!

meals = {
  breakfast: "eggs",
  lunch: "sandwich",
  dinner: "pizza",
  dessert: "pie"
  }

desserts = ["ice cream", "candy", "cake"]

p meals
p desserts

meals.each do |meal, food|
  puts "#{meal.upcase} - #{food.upcase}"
end

desserts.each do |food|
  puts food.upcase
end

p meals
p desserts

desserts.map! do |food|
  food.upcase
end

p desserts

#release 2

#1

puts meals.reject {|meal, food| food < "g"}
puts meals

puts desserts.reject { |food| food < "g" }
puts desserts

#destructive

#puts meals.reject! {|meal, food| food < "g"}
#puts meals

#puts desserts.reject! { |food| food < "g" }
#puts desserts


#2

puts meals.select {|meal, food| food < "g"}
puts meals

puts desserts.select { |food| food < "g" }
puts desserts

#destructive

#puts meals.select! {|meal, food| food < "g"}
#puts meals

#puts desserts.select! { |food| food < "g" }
#puts desserts

#3
#destructive

#puts meals.keep_if {|meal, food| food < "g"}
#puts meals

#puts desserts.delete_if { |food| food < "g" }
#puts desserts

#4

#returns two-item arrays, non-destructive
p meals.drop_while {|meal, food| food < "g"}
puts meals

puts desserts.drop_while { |food| food > "g" }
puts desserts


