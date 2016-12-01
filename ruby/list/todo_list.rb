class TodoList

	# attr_accessor :items

	def initialize(array_of_tasks)
		@items = array_of_tasks
	end

	def get_items
		@items
	end

	def get_item(index)
		@items[index]
	end

	def add_item(item)
		@items << item
	end

	def delete_item(item)
		@items.delete(item)
	end

end
