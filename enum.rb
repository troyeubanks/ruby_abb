module Enumerable
	
	def my_each
		0.upto(self.length - 1) do |i|
			yield self[i] if block_given?
		end
		self
	end

	def my_each_with_index
		0.upto(self.length - 1) do |i|
			yield self[i], i if block_given?
		end
	end

	

end

a = %w{water chestnut i think i smell a rat}

a.my_each_with_index {|b, i| puts "#{b} in narnia: #{i}"}