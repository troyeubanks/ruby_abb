def bubble_sort(arr)
	return arr if arr.size <= 1

	swapped = true
	while swapped do
		swapped = false
		0.upto(arr.size - 2) do |i|
			if arr[i] > arr[i+1]
				arr[i], arr[i+1] = arr[i+1], arr[i]
				swapped = true
			end
		end
	end
	arr
end

def bubble_sort_by(arr)
	return arr if arr.size <= 1

	swapped = true
	while swapped do
		swapped = false

		0.upto(arr.size - 2) do |i|
			if yield(arr[i], arr[i+1]) > 0
				arr[i], arr[i+1] = arr[i+1], arr[i]
				swapped = true
			end
		end
	end
	arr
end

a = [4, 3, 78, 2, 0, 2]
puts bubble_sort(a)

b = ["hi", "hello", "hey"]

puts bubble_sort_by(b) {|left,right| right.length - left.length}