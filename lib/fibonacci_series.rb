class FibonacciSeries
    def initialize
        @prev = 1;
        @current = 1;
    end

    def each
        yield(@current)

        while true
            yield(@current)

            temp = @current
            @current = @prev + temp
            @prev = temp
        end
    end
end