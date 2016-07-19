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
  dinner: "pizza"
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

