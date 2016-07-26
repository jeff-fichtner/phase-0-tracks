# Pseudocode

# make an empty hash

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # take the input and split into array
  # take array, turn them into keys, default quantity 1
  
  # print the list to the console (puts) (reference print method)
# output: hash

# Method to add an item to a list
# input: item name and optional quantity
# steps:
  # take input and convert to key, default quantity
# output: updated hash

# Method to remove an item from the list
# input: name of item to be removed
# steps: 
  # delete from the hash (.delete)
# output: updated hash

# Method to update the quantity of an item
# input: key and value
# steps: 
  # update the hash
# output: updated hash

# Method to print a list and make it look pretty
# input: the hash
# steps: (puts)
# output: printed hash


def create_list(string_of_items)
  shopping_list = {}
  arr_of_items = string_of_items.split(' ')
  
  arr_of_items.each do |item|
    shopping_list[item] = 1
  end
  print_list(shopping_list)
  shopping_list
end

def add_item(list_hash, item, quantity=1)
  #key_exists(list_hash, item)
  list_hash[item] = quantity
  list_hash
end

def update_quantity(list_hash, item, quantity)
  add_item(list_hash, item, quantity)
end

def remove_item(list_hash, item)
  list_hash.delete(item)
end

#def key_exists(list_hash, item)
#  list_hash[item].has_key?
#end

def print_list(hash_the_great)
  puts hash_the_great
end


# DRIVER CODE
  
your_list = create_list("carrots apples cereal pizza")
print_list(your_list)
p add_item(your_list, "bananas", 7)
p add_item(your_list, "ice cream")
p update_quantity(your_list, "apples", 3)
p remove_item(your_list, "apples")
p your_list
