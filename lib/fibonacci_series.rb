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
end