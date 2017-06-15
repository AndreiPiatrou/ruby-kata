require 'test_helper'

class BubbleSortTest < Minitest::Test
	def setup
        @sort = BubbleSort.new
	end

    def test_returns_nil_on_nil_argument
        actual = @sort.execute(nil)

        assert_nil(actual)
    end

    def test_returns_empty_array_on_empty_argument
        actual = @sort.execute([])

        assert_empty(actual)
    end

    def test_returns_sorted_array_by_asc_by_default
        actual = @sort.execute([3, 7, 1, 10])

        assert_equal([1, 3, 7, 10], actual)
    end

    def test_returns_sorted_array_by_desc
        actual = @sort.execute([3, 7, 1, 10], false)

        assert_equal([10, 7, 3, 1], actual)
    end
end