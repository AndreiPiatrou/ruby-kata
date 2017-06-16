require 'test_helper'

class FibonacciSeriesTest < Minitest::Test
	def setup
        @series = FibonacciSeries.new
	end

    def test_iterates_through_correct_series
        counter = 0
        actual = Array.new

        @series.each do |i|
            break if (counter += 1) > 10
            actual << i
        end

        assert_equal([1, 1, 2, 3, 5, 8, 13, 21, 34, 55], actual)
    end
end