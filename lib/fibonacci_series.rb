class FibonacciSeries
    def each
        prev = 1
        current = 1

        yield(current)

        loop do
            yield(current)

            temp = current
            current += prev
            prev = temp
        end
    end

    def until_element_at(index)
        raise ArgumentError, 'Not integer index' unless index.is_a? Integer
        raise ArgumentError, 'Index is less then 0' if index < 0

        result = Array.new

        self.each do |item|
            result << item
            break if ( ( index -= 1 ) < 0 )
        end

        result
    end
end