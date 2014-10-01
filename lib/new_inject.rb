class Array

	def new_inject(initial = nil)
		copy = self.dup
		accumulator = (initial ? initial : copy.shift )
		copy.each do | i | 
			accumulator = yield(accumulator,i)
		end
		accumulator
	end

end

a = [1,2,3,4]
p a

b = a.new_inject(nil) {|x,y| x + y}
puts b

p a


# if initial.is_a?(Symbol)
# 	1.send(:+, 1)

