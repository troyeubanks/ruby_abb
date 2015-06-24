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


end

a = %w{water chestnut i think i smell a rat}

