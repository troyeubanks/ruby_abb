module Enumerable
	
	def my_each
		0.upto(self.size - 1) do |i|
			yield(self[i]) if block_given?
		end
		self
	end

	def my_each_with_index
		0.upto(self.size - 1) do |i|
			yield self[i], i if block_given?
		end
		self
	end

	def my_select
		storage = []
		for i in self
			storage << i if yield(i)
		end
		storage
	end

	def my_all?
		flag = true
		for i in self
			flag = false if !yield(i)
		end
		flag
	end

	def my_any?
		flag = false
		for i in self
			flag = true if yield(i)
		end
		flag
	end

	def my_none?
		flag = true
		for i in self
			flag = false if yield(i)
		end
		flag
	end

	def my_count
		return self.size if !block_given?
		counter = 0
		for i in self
			counter +=1 if yield(i)
		end
		counter
	end

	def my_map
		storage = []
		for i in self
			storage << yield(i) if block_given?
		end
		storage
	end

	def my_inject(start=nil)
		result = start == nil ? self.first : start
		range = start == nil ? self.size - 1 : self.size
		for i in self.last(range)
			result = yield(result, i)
		end
		result
	end


end

a = %w{water chestnut i think i smell a rat}
b = [1, 2, 3, 4, 5, 6, 7]

p b.my_inject {|x, t| t + x}