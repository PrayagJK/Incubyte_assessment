require 'minitest/autorun'
require_relative 'string_calculator'

class StringCalculatorTest < Minitest::Test
    def test_empty_string_returns_zero
        assert_equal 0, StringCalculator.add("")
    end

    def test_single_number
        assert_equal 1, StringCalculator.add("1")
    end

    def test_two_comma_seperated_numbers
        assert_equal 5, StringCalculator.add("2,3")
    end


end