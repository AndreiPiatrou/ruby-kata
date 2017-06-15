class BubbleSort
	def execute(array, asc = true)
        return nil if array.nil?
    
        length = array.count - 1
    	iterations = 0..length
    	swap_skip_condition = asc ? -> (i, j) { array[i] > array[j] }
    	                          : -> (i, j) { array[i] < array[j] }

    	iterations.each do |i|
    	    iterations.each do |j|
    	        next if swap_skip_condition.call(i, j)

    	        temp = array[i]
    	        array[i] = array[j]
    	        array[j] = temp
    	    end
    	end

    	array
    end
end