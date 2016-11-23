def search_array(arr, int) 
	index = 0
	results = []
	while index < arr.length
		results << index if arr[index] == int
		index += 1
	end
	results = nil if results.length < 1
	results 
end

# driver code
# p search_array([15, 13, 21, 16, 21, 5], 7)

def fib(length)
	fib_array = [0]
	return fib_array if length == 1
	fib_array << 1
	until fib_array.length == length
		fib_array << fib_array[-1] + fib_array[-2]
	end
	fib_array
end

# driver code
# puts fib(100)[-1] == 218922995834555169026

def bubble_sort(array)

	loop do
		i = 0
		swap_counter = 0
		while i < array.length - 1
			if array[i] > array[i + 1]
				array[i], array[i + 1] = array[i + 1], array[i]
				swap_counter += 1
			end
			i += 1
		end
		break if swap_counter == 0
	end

	array
end

p bubble_sort([3, 2, 6, 7, 3, 4, 1, 9, 6, 11, 1])