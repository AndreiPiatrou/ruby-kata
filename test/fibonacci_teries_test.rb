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

    def test_gets_correct_series_until_exact_index
        actual = @series.until_element_at(9)

        assert_equal([1, 1, 2, 3, 5, 8, 13, 21, 34, 55], actual)
    end
    def test_rreturns_single_item_array
        actual = @series.until_element_at(0)

        assert_equal([1], actual)
    end
    def test_raises_argument_error_on_negative_argument
        assert_raises ArgumentError do 
            @series.until_element_at(-1)
        end
    end

    def test_raises_argument_error_on_non_integer_argument
        assert_raises ArgumentError do 
            @series.until_element_at(1.1)
        end
    end
end