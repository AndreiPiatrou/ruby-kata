class FibonacciSeries
    def each
        prev = 1
        current = 1

        yield(current)

        while true
            yield(current)

            temp = current
            current += prev
            prev = temp
        end
    end
end