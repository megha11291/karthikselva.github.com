class Arrays
	attr_accessor :arr1, :arr2

	def initialize(arr1,arr2)
		@arr1 = arr1
		@arr2 = arr2
	end

	def find_kth_smallest(k)
		tot = (@arr1.length + @arr2.length - 1)
		if k > tot
			return -1 
		else 
			i = 0
			j = 0
			k_cur = 0
			t = -1
			while k_cur < tot 
				if k_cur > k 
					return t
				end
				if @arr1[i] < @arr2[j]
					t = @arr1[i]
					i = i+1
				else
					t = @arr2[j]
					j = j+1
				end
				k_cur = k_cur + 1
			end 
		end
	end
end

arrs = Arrays.new([1,3,5,7],[2,4,6,8,9,10])

puts arrs.find_kth_smallest(1) # =>  2

puts arrs.find_kth_smallest(5) # => 6

puts arrs.find_kth_smallest(3) # => 4

puts arrs.find_kth_smallest(10) # => -1
