# methods

class TodoList
	def initialize item_array
		@variable = item_array
	end

	def add_item item
		@variable << item
	end

	def get_items
		@variable
	end

	def delete_item item
		@variable.delete(item)
	end

	def get_item index
		@variable[index]
	end
end

# list = TodoList.new(["do the dishes", "mow the lawn"])
# list.get_items == ["do the dishes", "mow the lawn"]
# -------------------------------------------------------
# list = TodoList.new(["do the dishes", "mow the lawn"])
# list.delete_item
# list.get_items == ["mow the lawn"]
# -------------------------------------------------------
# list = TodoList.new(["do the dishes", "mow the lawn"])
# list.get_item(0) == "do the dishes"
# -------------------------------------------------------
# list = TodoList.new(["do the dishes", "mow the lawn"])
# list.add_item("mop") 
# list.get_items == (["do the dishes", "mow the lawn", "mop"])